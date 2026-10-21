.class public final Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$GetProgramListResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$GetProgramListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$GetProgramListResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private completed_:Z

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

.field private radioId_:I

.field private status_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->status_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->status_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureProgramListIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$169800()Lcom/google/protobuf/Descriptors$Descriptor;

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

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

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllProgramList(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addProgramList(ILcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

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

.method public addProgramList(ILcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addProgramList(Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

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

.method public addProgramList(Lcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

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
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$GetProgramListResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->build()Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->build()Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$GetProgramListResponse;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->status_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170402(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;I)I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->radioId_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170502(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->completed_:Z

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170602(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;Z)Z

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    :cond_3
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170702(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;Ljava/util/List;)Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170802(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->status_:I

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->radioId_:I

    and-int/lit8 v0, v0, -0x3

    iput-boolean v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->completed_:Z

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clear()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clear()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clear()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clear()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCompleted()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->completed_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearProgramList()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearRadioId()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->radioId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStatus()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->status_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->completed_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$GetProgramListResponse;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$169800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getProgramList(I)Lcom/google/android/projection/proto/Protos$RadioStationInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

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

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

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

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProgramListCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRadioId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->radioId_:I

    return v0
.end method

.method public getStatus()Lcom/google/android/projection/proto/Protos$MessageStatus;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->status_:I

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$MessageStatus;->valueOf(I)Lcom/google/android/projection/proto/Protos$MessageStatus;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_UNSOLICITED_MESSAGE:Lcom/google/android/projection/proto/Protos$MessageStatus;

    :cond_0
    return-object v0
.end method

.method public hasCompleted()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRadioId()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatus()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$169900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    const-class v2, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->hasStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->hasRadioId()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->hasCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->getProgramListCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->getProgramList(I)Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->getStatus()Lcom/google/android/projection/proto/Protos$MessageStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->setStatus(Lcom/google/android/projection/proto/Protos$MessageStatus;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->hasRadioId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->getRadioId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->setRadioId(I)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->hasCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->getCompleted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->setCompleted(Z)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    :cond_3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170700(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170700(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170700(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170700(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170700(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170900()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->getProgramListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$170700(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_8
    :goto_1
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->access$171000(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$GetProgramListResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$GetProgramListResponse;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeProgramList(I)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setCompleted(Z)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->completed_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setProgramList(ILcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

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

.method public setProgramList(ILcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->ensureProgramListIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->programList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRadioId(I)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->radioId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(Lcom/google/android/projection/proto/Protos$MessageStatus;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->status_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GetProgramListResponse$Builder;

    move-result-object p1

    return-object p1
.end method
