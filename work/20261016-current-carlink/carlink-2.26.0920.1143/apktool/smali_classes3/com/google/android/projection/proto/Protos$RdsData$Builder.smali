.class public final Lcom/google/android/projection/proto/Protos$RdsData$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$RdsDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$RdsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$RdsData$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$RdsDataOrBuilder;"
    }
.end annotation


# instance fields
.field private alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

.field private bitField0_:I

.field private musicSpeechSwitch_:I

.field private programId_:I

.field private programServiceName_:Ljava/lang/Object;

.field private programTypeName_:Ljava/lang/Object;

.field private programType_:I

.field private radioText_:Ljava/lang/Object;

.field private trafficAnnouncementFlag_:Z

.field private trafficProgramFlag_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->access$159100()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programServiceName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programTypeName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->radioText_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->access$159100()Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programServiceName_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programTypeName_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->radioText_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureAlternativeFrequenciesIsMutable()V
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$RdsData;->access$159200(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$157300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->access$157700()Z

    return-void
.end method


# virtual methods
.method public addAllAlternativeFrequencies(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$RdsData$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->ensureAlternativeFrequenciesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addAlternativeFrequencies(I)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->ensureAlternativeFrequenciesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$RdsData;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RdsData;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->build()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->build()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$RdsData;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$RdsData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$RdsData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    iget v2, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    :cond_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158002(Lcom/google/android/projection/proto/Protos$RdsData;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programId_:I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158102(Lcom/google/android/projection/proto/Protos$RdsData;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->musicSpeechSwitch_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158202(Lcom/google/android/projection/proto/Protos$RdsData;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x4

    :cond_3
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programServiceName_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158302(Lcom/google/android/projection/proto/Protos$RdsData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programType_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158402(Lcom/google/android/projection/proto/Protos$RdsData;I)I

    or-int/lit8 v2, v2, 0x8

    :cond_4
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x10

    :cond_5
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programTypeName_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158502(Lcom/google/android/projection/proto/Protos$RdsData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x20

    :cond_6
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->radioText_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158602(Lcom/google/android/projection/proto/Protos$RdsData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->trafficProgramFlag_:Z

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158702(Lcom/google/android/projection/proto/Protos$RdsData;Z)Z

    or-int/lit8 v2, v2, 0x40

    :cond_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->trafficAnnouncementFlag_:Z

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158802(Lcom/google/android/projection/proto/Protos$RdsData;Z)Z

    or-int/lit16 v2, v2, 0x80

    :cond_8
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158902(Lcom/google/android/projection/proto/Protos$RdsData;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->access$157800()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programId_:I

    and-int/lit8 v0, v0, -0x3

    iput v1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->musicSpeechSwitch_:I

    and-int/lit8 v0, v0, -0x5

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programServiceName_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x9

    iput v1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programType_:I

    and-int/lit8 v0, v0, -0x11

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programTypeName_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x21

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->radioText_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x41

    iput-boolean v1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->trafficProgramFlag_:Z

    and-int/lit16 v0, v0, -0x81

    iput-boolean v1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->trafficAnnouncementFlag_:Z

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clear()Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clear()Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clear()Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clear()Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAlternativeFrequencies()Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->access$159300()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearMusicSpeechSwitch()Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->musicSpeechSwitch_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearProgramId()Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearProgramServiceName()Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RdsData;->getProgramServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programServiceName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearProgramType()Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programType_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearProgramTypeName()Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RdsData;->getProgramTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programTypeName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRadioText()Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RdsData;->getRadioText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->radioText_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTrafficAnnouncementFlag()Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->trafficAnnouncementFlag_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTrafficProgramFlag()Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->trafficProgramFlag_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clone()Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clone()Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clone()Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clone()Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clone()Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->clone()Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlternativeFrequencies(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getAlternativeFrequenciesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlternativeFrequenciesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    :goto_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RdsData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$157300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMusicSpeechSwitch()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->musicSpeechSwitch_:I

    return v0
.end method

.method public getProgramId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programId_:I

    return v0
.end method

.method public getProgramServiceName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programServiceName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programServiceName_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProgramServiceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programServiceName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programServiceName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getProgramType()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programType_:I

    return v0
.end method

.method public getProgramTypeName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programTypeName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programTypeName_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProgramTypeNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programTypeName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programTypeName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->radioText_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->radioText_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRadioTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->radioText_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->radioText_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTrafficAnnouncementFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->trafficAnnouncementFlag_:Z

    return v0
.end method

.method public getTrafficProgramFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->trafficProgramFlag_:Z

    return v0
.end method

.method public hasMusicSpeechSwitch()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProgramId()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProgramServiceName()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProgramType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProgramTypeName()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRadioText()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrafficAnnouncementFlag()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrafficProgramFlag()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$157400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$RdsData;

    const-class v2, Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158000(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158000(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->ensureAlternativeFrequenciesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158000(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->hasProgramId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->getProgramId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->setProgramId(I)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->hasMusicSpeechSwitch()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->getMusicSpeechSwitch()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->setMusicSpeechSwitch(I)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->hasProgramServiceName()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158300(Lcom/google/android/projection/proto/Protos$RdsData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programServiceName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->hasProgramType()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->getProgramType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->setProgramType(I)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->hasProgramTypeName()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158500(Lcom/google/android/projection/proto/Protos$RdsData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programTypeName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->hasRadioText()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->access$158600(Lcom/google/android/projection/proto/Protos$RdsData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->radioText_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->hasTrafficProgramFlag()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->getTrafficProgramFlag()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->setTrafficProgramFlag(Z)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->hasTrafficAnnouncementFlag()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->getTrafficAnnouncementFlag()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->setTrafficAnnouncementFlag(Z)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    :cond_a
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RdsData;->access$159000(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$RdsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RdsData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$RdsData;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$RdsData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$RdsData;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAlternativeFrequencies(II)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->ensureAlternativeFrequenciesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->alternativeFrequencies_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMusicSpeechSwitch(I)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->musicSpeechSwitch_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setProgramId(I)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setProgramServiceName(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programServiceName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setProgramServiceNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programServiceName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setProgramType(I)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programType_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setProgramTypeName(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programTypeName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setProgramTypeNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->programTypeName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRadioText(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->radioText_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRadioTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->radioText_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTrafficAnnouncementFlag(Z)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->trafficAnnouncementFlag_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTrafficProgramFlag(Z)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->trafficProgramFlag_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    return-object p1
.end method
