.class public final Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bugReport_:Ljava/lang/Object;

.field private tokens_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bugReport_:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$241900()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bugReport_:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$241900()Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureTokensIsMutable()V
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$242000(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$240800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$241200()Z

    return-void
.end method


# virtual methods
.method public addAllTokens(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->ensureTokensIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addTokens(I)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->ensureTokensIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public build()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->build()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->build()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bugReport_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$241502(Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    :cond_1
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$241602(Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$241702(Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bugReport_:Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$241300()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clear()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clear()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clear()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clear()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBugReport()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->getBugReport()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bugReport_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearTokens()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$242100()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->clone()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBugReport()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bugReport_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bugReport_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBugReportBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bugReport_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bugReport_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$240800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getTokens(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getTokensCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTokensList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    :goto_0
    return-object v0
.end method

.method public hasBugReport()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$240900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    const-class v2, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->hasBugReport()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$241500(Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bugReport_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_1
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$241600(Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$241600(Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->ensureTokensIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$241600(Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_3
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->access$241800(Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBugReport(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bugReport_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBugReportBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->bugReport_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTokens(II)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->ensureTokensIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->tokens_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponse$Builder;

    move-result-object p1

    return-object p1
.end method
