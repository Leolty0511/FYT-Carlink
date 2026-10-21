.class public final Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocusOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deny_:Z

.field private unsolicited_:Z

.field private videoFocusMode_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->videoFocusMode_:I

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->videoFocusMode_:I

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$227000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->access$227400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->build()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->build()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->videoFocusMode_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->access$227602(Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;I)I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->deny_:Z

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->access$227702(Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;Z)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->unsolicited_:Z

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->access$227802(Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;Z)Z

    or-int/lit8 v2, v2, 0x4

    :cond_2
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->access$227902(Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->videoFocusMode_:I

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->deny_:Z

    and-int/lit8 v0, v0, -0x3

    iput-boolean v1, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->unsolicited_:Z

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clear()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clear()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clear()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clear()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeny()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->deny_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearUnsolicited()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->unsolicited_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVideoFocusMode()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->videoFocusMode_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clone()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clone()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clone()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clone()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clone()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->clone()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    move-result-object v0

    return-object v0
.end method

.method public getDeny()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->deny_:Z

    return v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$227000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getUnsolicited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->unsolicited_:Z

    return v0
.end method

.method public getVideoFocusMode()Lcom/google/android/projection/proto/Protos$VideoFocusMode;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->videoFocusMode_:I

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$VideoFocusMode;->valueOf(I)Lcom/google/android/projection/proto/Protos$VideoFocusMode;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusMode;->VIDEO_FOCUS_PROJECTED:Lcom/google/android/projection/proto/Protos$VideoFocusMode;

    :cond_0
    return-object v0
.end method

.method public hasDeny()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnsolicited()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVideoFocusMode()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$227100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    const-class v2, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->hasVideoFocusMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->hasVideoFocusMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->getVideoFocusMode()Lcom/google/android/projection/proto/Protos$VideoFocusMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->setVideoFocusMode(Lcom/google/android/projection/proto/Protos$VideoFocusMode;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->hasDeny()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->getDeny()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->setDeny(Z)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->hasUnsolicited()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->getUnsolicited()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->setUnsolicited(Z)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    :cond_3
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->access$228000(Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDeny(Z)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->deny_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUnsolicited(Z)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->unsolicited_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setVideoFocusMode(Lcom/google/android/projection/proto/Protos$VideoFocusMode;)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoFocusMode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus$Builder;->videoFocusMode_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method
