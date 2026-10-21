.class public final Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$NavigationStatusServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$NavigationStatusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$NavigationStatusServiceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private imageOptionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

.field private minimumIntervalMs_:I

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->type_:I

    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->type_:I

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$38300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getImageOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->getImageOptions()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->access$39900()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->getImageOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 5
    iget v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->minimumIntervalMs_:I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->access$40102(Lcom/google/android/projection/proto/Protos$NavigationStatusService;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 6
    :cond_1
    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->type_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->access$40202(Lcom/google/android/projection/proto/Protos$NavigationStatusService;I)I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->access$40302(Lcom/google/android/projection/proto/Protos$NavigationStatusService;Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->access$40302(Lcom/google/android/projection/proto/Protos$NavigationStatusService;Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    :goto_1
    or-int/lit8 v2, v2, 0x4

    .line 10
    :cond_3
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->access$40402(Lcom/google/android/projection/proto/Protos$NavigationStatusService;I)I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->minimumIntervalMs_:I

    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->type_:I

    and-int/lit8 v0, v0, -0x3

    .line 9
    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearImageOptions()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x5

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearMinimumIntervalMs()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->minimumIntervalMs_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearType()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->type_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$38300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getImageOptions()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 19
    .line 20
    return-object v0
.end method

.method public getImageOptionsBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->getImageOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getImageOptionsOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptionsOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptionsOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMinimumIntervalMs()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->minimumIntervalMs_:I

    return v0
.end method

.method public getType()Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->IMAGE:Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public hasImageOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMinimumIntervalMs()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$38400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

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
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->hasMinimumIntervalMs()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->hasType()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->hasImageOptions()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->getImageOptions()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;->isInitialized()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    return v1

    .line 33
    :cond_2
    const/4 v0, 0x1

    .line 34
    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasMinimumIntervalMs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getMinimumIntervalMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->setMinimumIntervalMs(I)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getType()Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->setType(Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasImageOptions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getImageOptions()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeImageOptions(Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    .line 17
    :cond_3
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->access$40500(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 19
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
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

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    .line 24
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeImageOptions(Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;->newBuilder(Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x4

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setImageOptions(Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    return-object p0
.end method

.method public setImageOptions(Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMinimumIntervalMs(I)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->minimumIntervalMs_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->type_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method
