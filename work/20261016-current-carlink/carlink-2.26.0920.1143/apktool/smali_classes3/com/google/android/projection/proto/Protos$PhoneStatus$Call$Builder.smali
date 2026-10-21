.class public final Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$PhoneStatus$CallOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$PhoneStatus$CallOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private callDurationSeconds_:I

.field private callerId_:Ljava/lang/Object;

.field private callerNumberType_:Ljava/lang/Object;

.field private callerNumber_:Ljava/lang/Object;

.field private callerThumbnail_:Lcom/google/protobuf/ByteString;

.field private phoneState_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->phoneState_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumber_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerId_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumberType_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerThumbnail_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->phoneState_:I

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumber_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerId_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumberType_:Ljava/lang/Object;

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerThumbnail_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$209900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->access$210300()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->build()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->build()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->phoneState_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->access$210502(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;I)I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callDurationSeconds_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->access$210602(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumber_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->access$210702(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x8

    :cond_3
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->access$210802(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x10

    :cond_4
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumberType_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->access$210902(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    or-int/lit8 v2, v2, 0x20

    :cond_5
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerThumbnail_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->access$211002(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->access$211102(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->phoneState_:I

    iget v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callDurationSeconds_:I

    and-int/lit8 v0, v1, -0x3

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumber_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x5

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerId_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x9

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumberType_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerThumbnail_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clear()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clear()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clear()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clear()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCallDurationSeconds()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callDurationSeconds_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCallerId()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getCallerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCallerNumber()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getCallerNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumber_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCallerNumberType()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getCallerNumberType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumberType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCallerThumbnail()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getCallerThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerThumbnail_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPhoneState()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->phoneState_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clone()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clone()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clone()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clone()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clone()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->clone()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCallDurationSeconds()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callDurationSeconds_:I

    return v0
.end method

.method public getCallerId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCallerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCallerNumber()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumber_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumber_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCallerNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumber_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumber_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCallerNumberType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumberType_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumberType_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCallerNumberTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumberType_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumberType_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCallerThumbnail()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerThumbnail_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$209900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneState()Lcom/google/android/projection/proto/Protos$PhoneStatus$State;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->phoneState_:I

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->valueOf(I)Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->UNKNOWN:Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    :cond_0
    return-object v0
.end method

.method public hasCallDurationSeconds()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCallerId()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCallerNumberType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCallerThumbnail()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPhoneState()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$210000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    const-class v2, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->hasPhoneState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->hasCallDurationSeconds()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->hasPhoneState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getPhoneState()Lcom/google/android/projection/proto/Protos$PhoneStatus$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->setPhoneState(Lcom/google/android/projection/proto/Protos$PhoneStatus$State;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->hasCallDurationSeconds()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getCallDurationSeconds()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->setCallDurationSeconds(I)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->hasCallerNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->access$210700(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumber_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->hasCallerId()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->access$210800(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->hasCallerNumberType()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->access$210900(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumberType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->hasCallerThumbnail()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getCallerThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->setCallerThumbnail(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    :cond_6
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->access$211200(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCallDurationSeconds(I)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callDurationSeconds_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCallerId(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCallerIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCallerNumber(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumber_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCallerNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumber_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCallerNumberType(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumberType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCallerNumberTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerNumberType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCallerThumbnail(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->callerThumbnail_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPhoneState(Lcom/google/android/projection/proto/Protos$PhoneStatus$State;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$State;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->phoneState_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call$Builder;

    move-result-object p1

    return-object p1
.end method
