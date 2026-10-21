.class public final Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$RadioStateNotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$RadioStateNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$RadioStateNotificationOrBuilder;"
    }
.end annotation


# instance fields
.field private activeRadioId_:I

.field private bitField0_:I

.field private programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo;",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private programList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private radioMuted_:Z

.field private radioSourceEnabled_:Z

.field private stationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo;",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

.field private stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$StationPresetList;",
            "Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;",
            "Lcom/google/android/projection/proto/Protos$StationPresetListOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private stationPresetLists_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$StationPresetList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureProgramListIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureStationPresetListsIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$138400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo;",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

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

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getStationInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo;",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getStationPresetListsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$StationPresetList;",
            "Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;",
            "Lcom/google/android/projection/proto/Protos$StationPresetListOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

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

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$138800()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getStationInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getStationPresetListsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllProgramList(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllStationPresetLists(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$StationPresetList;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureStationPresetListsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addProgramList(ILcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addProgramList(ILcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addProgramList(Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addProgramList(Lcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addProgramListBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;

    return-object v0
.end method

.method public addProgramListBuilder(I)Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addStationPresetLists(ILcom/google/android/projection/proto/Protos$StationPresetList$Builder;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureStationPresetListsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;->build()Lcom/google/android/projection/proto/Protos$StationPresetList;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;->build()Lcom/google/android/projection/proto/Protos$StationPresetList;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addStationPresetLists(ILcom/google/android/projection/proto/Protos$StationPresetList;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureStationPresetListsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addStationPresetLists(Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureStationPresetListsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;->build()Lcom/google/android/projection/proto/Protos$StationPresetList;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;->build()Lcom/google/android/projection/proto/Protos$StationPresetList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addStationPresetLists(Lcom/google/android/projection/proto/Protos$StationPresetList;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureStationPresetListsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addStationPresetListsBuilder()Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getStationPresetListsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$StationPresetList;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$StationPresetList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;

    return-object v0
.end method

.method public addStationPresetListsBuilder(I)Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getStationPresetListsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$StationPresetList;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$StationPresetList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->radioSourceEnabled_:Z

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139002(Lcom/google/android/projection/proto/Protos$RadioStateNotification;Z)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->radioMuted_:Z

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139102(Lcom/google/android/projection/proto/Protos$RadioStateNotification;Z)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->activeRadioId_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139202(Lcom/google/android/projection/proto/Protos$RadioStateNotification;I)I

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139302(Lcom/google/android/projection/proto/Protos$RadioStateNotification;Lcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    or-int/lit8 v2, v2, 0x8

    :cond_4
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    :cond_5
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139402(Lcom/google/android/projection/proto/Protos$RadioStateNotification;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_8

    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    :cond_7
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_3
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139502(Lcom/google/android/projection/proto/Protos$RadioStateNotification;Ljava/util/List;)Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139602(Lcom/google/android/projection/proto/Protos$RadioStateNotification;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->radioSourceEnabled_:Z

    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->radioMuted_:Z

    and-int/lit8 v1, v1, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->activeRadioId_:I

    and-int/lit8 v0, v1, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_2
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clear()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clear()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clear()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clear()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearActiveRadioId()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->activeRadioId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearProgramList()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearRadioMuted()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->radioMuted_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRadioSourceEnabled()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->radioSourceEnabled_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStationInfo()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearStationPresetLists()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActiveRadioId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->activeRadioId_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$138400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getProgramList(I)Lcom/google/android/projection/proto/Protos$RadioStationInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getProgramListBuilder(I)Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;

    return-object p1
.end method

.method public getProgramListBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProgramListCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getProgramListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProgramListOrBuilder(I)Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getProgramListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRadioMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->radioMuted_:Z

    return v0
.end method

.method public getRadioSourceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->radioSourceEnabled_:Z

    return v0
.end method

.method public getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    return-object v0
.end method

.method public getStationInfoBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getStationInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;

    return-object v0
.end method

.method public getStationInfoOrBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getStationPresetLists(I)Lcom/google/android/projection/proto/Protos$StationPresetList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$StationPresetList;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getStationPresetListsBuilder(I)Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getStationPresetListsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;

    return-object p1
.end method

.method public getStationPresetListsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getStationPresetListsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStationPresetListsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getStationPresetListsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$StationPresetList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStationPresetListsOrBuilder(I)Lcom/google/android/projection/proto/Protos$StationPresetListOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$StationPresetListOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getStationPresetListsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$StationPresetListOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasActiveRadioId()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRadioMuted()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRadioSourceEnabled()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStationInfo()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$138500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    const-class v2, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->hasRadioSourceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->hasActiveRadioId()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->hasStationInfo()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getProgramListCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getProgramList(I)Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getStationPresetListsCount()I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getStationPresetLists(I)Lcom/google/android/projection/proto/Protos$StationPresetList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$StationPresetList;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasRadioSourceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getRadioSourceEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->setRadioSourceEnabled(Z)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasRadioMuted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getRadioMuted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->setRadioMuted(Z)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasActiveRadioId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getActiveRadioId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->setActiveRadioId(I)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasStationInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeStationInfo(Lcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    :cond_4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139400(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139400(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139400(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139400(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139400(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139700()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139400(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139500(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139500(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureStationPresetListsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139500(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_4

    :cond_b
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139500(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139500(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139800()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->getStationPresetListsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_c
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139500(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_e
    :goto_4
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->access$139900(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$RadioStateNotification;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeStationInfo(Lcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->newBuilder(Lcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeProgramList(I)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeStationPresetLists(I)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureStationPresetListsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setActiveRadioId(I)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->activeRadioId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setProgramList(ILcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setProgramList(ILcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->programList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRadioMuted(Z)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->radioMuted_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRadioSourceEnabled(Z)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->radioSourceEnabled_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStationInfo(Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    return-object p0
.end method

.method public setStationInfo(Lcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->bitField0_:I

    return-object p0
.end method

.method public setStationPresetLists(ILcom/google/android/projection/proto/Protos$StationPresetList$Builder;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureStationPresetListsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;->build()Lcom/google/android/projection/proto/Protos$StationPresetList;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$StationPresetList$Builder;->build()Lcom/google/android/projection/proto/Protos$StationPresetList;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setStationPresetLists(ILcom/google/android/projection/proto/Protos$StationPresetList;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetListsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->ensureStationPresetListsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method
