.class public final Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$PhoneStatusInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$PhoneStatusInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$PhoneStatusInputOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private callerId_:Ljava/lang/Object;

.field private callerNumber_:Ljava/lang/Object;

.field private inputBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;",
            "Lcom/google/android/projection/proto/Protos$InstrumentClusterInput$Builder;",
            "Lcom/google/android/projection/proto/Protos$InstrumentClusterInputOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private input_:Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerNumber_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerId_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerNumber_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerId_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$212400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getInputFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;",
            "Lcom/google/android/projection/proto/Protos$InstrumentClusterInput$Builder;",
            "Lcom/google/android/projection/proto/Protos$InstrumentClusterInputOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->inputBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->getInput()Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->inputBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->input_:Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->inputBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->access$212800()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->getInputFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->build()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->build()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->inputBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->input_:Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    :goto_0
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->access$213002(Lcom/google/android/projection/proto/Protos$PhoneStatusInput;Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;)Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x2

    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerNumber_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->access$213102(Lcom/google/android/projection/proto/Protos$PhoneStatusInput;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    or-int/lit8 v2, v2, 0x4

    :cond_3
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->access$213202(Lcom/google/android/projection/proto/Protos$PhoneStatusInput;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->access$213302(Lcom/google/android/projection/proto/Protos$PhoneStatusInput;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->inputBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->input_:Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerNumber_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x3

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerId_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clear()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clear()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clear()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clear()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCallerId()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->getCallerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCallerNumber()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->getCallerNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerNumber_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearInput()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->inputBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->input_:Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clone()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clone()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clone()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clone()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clone()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->clone()Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCallerId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCallerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCallerNumber()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerNumber_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerNumber_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCallerNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerNumber_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerNumber_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$212400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->inputBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->input_:Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    return-object v0
.end method

.method public getInputBuilder()Lcom/google/android/projection/proto/Protos$InstrumentClusterInput$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->getInputFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$InstrumentClusterInput$Builder;

    return-object v0
.end method

.method public getInputOrBuilder()Lcom/google/android/projection/proto/Protos$InstrumentClusterInputOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->inputBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$InstrumentClusterInputOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->input_:Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasCallerId()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCallerNumber()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInput()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$212500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    const-class v2, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->hasInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->getInput()Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$PhoneStatusInput;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->hasInput()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->getInput()Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeInput(Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->hasCallerNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->access$213100(Lcom/google/android/projection/proto/Protos$PhoneStatusInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerNumber_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->hasCallerId()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->access$213200(Lcom/google/android/projection/proto/Protos$PhoneStatusInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_3
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->access$213400(Lcom/google/android/projection/proto/Protos$PhoneStatusInput;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$PhoneStatusInput;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$PhoneStatusInput;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatusInput;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$PhoneStatusInput;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeInput(Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->inputBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->input_:Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->input_:Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;->newBuilder(Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;)Lcom/google/android/projection/proto/Protos$InstrumentClusterInput$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$InstrumentClusterInput$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;)Lcom/google/android/projection/proto/Protos$InstrumentClusterInput$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InstrumentClusterInput$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->input_:Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCallerId(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCallerIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCallerNumber(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerNumber_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCallerNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->callerNumber_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setInput(Lcom/google/android/projection/proto/Protos$InstrumentClusterInput$Builder;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->inputBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InstrumentClusterInput$Builder;->build()Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->input_:Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    return-object p0
.end method

.method public setInput(Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->inputBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->input_:Lcom/google/android/projection/proto/Protos$InstrumentClusterInput;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatusInput$Builder;

    move-result-object p1

    return-object p1
.end method
