.class public final Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$WirelessTcpConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$WirelessTcpConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private socketReadTimeoutMs_:I

.field private socketReceiveBufferSizeKb_:I

.field private socketReceiveBufferSize_:I

.field private socketSendBufferSizeKb_:I

.field private socketSendBufferSize_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$12800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->access$13200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 5
    iget v2, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReceiveBufferSizeKb_:I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->access$13402(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 6
    iget v3, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketSendBufferSizeKb_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->access$13502(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    .line 7
    iget v3, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReadTimeoutMs_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->access$13602(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;I)I

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    .line 8
    iget v3, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReceiveBufferSize_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->access$13702(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;I)I

    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 9
    iget v1, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketSendBufferSize_:I

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->access$13802(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;I)I

    or-int/lit8 v2, v2, 0x10

    .line 10
    :cond_4
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->access$13902(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;I)I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReceiveBufferSizeKb_:I

    .line 7
    iget v1, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketSendBufferSizeKb_:I

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReadTimeoutMs_:I

    and-int/lit8 v1, v1, -0x5

    .line 10
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReceiveBufferSize_:I

    and-int/lit8 v1, v1, -0x9

    .line 11
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketSendBufferSize_:I

    and-int/lit8 v0, v1, -0x11

    .line 12
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clear()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clear()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clear()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clear()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearSocketReadTimeoutMs()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReadTimeoutMs_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearSocketReceiveBufferSize()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReceiveBufferSize_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearSocketReceiveBufferSizeKb()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReceiveBufferSizeKb_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearSocketSendBufferSize()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketSendBufferSize_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearSocketSendBufferSizeKb()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketSendBufferSizeKb_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$12800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSocketReadTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReadTimeoutMs_:I

    return v0
.end method

.method public getSocketReceiveBufferSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReceiveBufferSize_:I

    return v0
.end method

.method public getSocketReceiveBufferSizeKb()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReceiveBufferSizeKb_:I

    return v0
.end method

.method public getSocketSendBufferSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketSendBufferSize_:I

    return v0
.end method

.method public getSocketSendBufferSizeKb()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketSendBufferSizeKb_:I

    return v0
.end method

.method public hasSocketReadTimeoutMs()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSocketReceiveBufferSize()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSocketReceiveBufferSizeKb()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSocketSendBufferSize()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSocketSendBufferSizeKb()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

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

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$12900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->hasSocketReceiveBufferSizeKb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->getSocketReceiveBufferSizeKb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->setSocketReceiveBufferSizeKb(I)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->hasSocketSendBufferSizeKb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->getSocketSendBufferSizeKb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->setSocketSendBufferSizeKb(I)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->hasSocketReadTimeoutMs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->getSocketReadTimeoutMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->setSocketReadTimeoutMs(I)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->hasSocketReceiveBufferSize()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->getSocketReceiveBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->setSocketReceiveBufferSize(I)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->hasSocketSendBufferSize()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->getSocketSendBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->setSocketSendBufferSize(I)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    .line 21
    :cond_5
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->access$14000(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 23
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
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

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    .line 28
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSocketReadTimeoutMs(I)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReadTimeoutMs_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setSocketReceiveBufferSize(I)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReceiveBufferSize_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setSocketReceiveBufferSizeKb(I)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketReceiveBufferSizeKb_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setSocketSendBufferSize(I)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketSendBufferSize_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setSocketSendBufferSizeKb(I)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->socketSendBufferSizeKb_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method
