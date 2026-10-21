.class public final Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$TouchEvent$PointerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$TouchEvent$PointerOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private pointerId_:I

.field private x_:I

.field private y_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$123000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->access$123400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->build()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->build()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->x_:I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->access$123602(Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->y_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->access$123702(Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->pointerId_:I

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->access$123802(Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;I)I

    or-int/lit8 v2, v2, 0x4

    :cond_2
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->access$123902(Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->x_:I

    iget v1, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->y_:I

    and-int/lit8 v1, v1, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->pointerId_:I

    and-int/lit8 v0, v1, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clear()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clear()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clear()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clear()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPointerId()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->pointerId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearX()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->x_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearY()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->y_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clone()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clone()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clone()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clone()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clone()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->clone()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$123000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPointerId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->pointerId_:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->x_:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->y_:I

    return v0
.end method

.method public hasPointerId()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasX()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasY()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$123100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    const-class v2, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->hasX()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->hasY()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->hasPointerId()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->hasX()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->getX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->setX(I)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->hasY()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->getY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->setY(I)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->hasPointerId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->getPointerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->setPointerId(I)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    :cond_3
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->access$124000(Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPointerId(I)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->pointerId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setX(I)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->x_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setY(I)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer$Builder;->y_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method
