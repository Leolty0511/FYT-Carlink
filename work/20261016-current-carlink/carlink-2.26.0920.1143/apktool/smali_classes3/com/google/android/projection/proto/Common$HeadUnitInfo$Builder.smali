.class public final Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Common$HeadUnitInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private headUnitMake_:Ljava/lang/Object;

.field private headUnitModel_:Ljava/lang/Object;

.field private headUnitSoftwareBuild_:Ljava/lang/Object;

.field private headUnitSoftwareVersion_:Ljava/lang/Object;

.field private make_:Ljava/lang/Object;

.field private model_:Ljava/lang/Object;

.field private vehicleId_:Ljava/lang/Object;

.field private year_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->make_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->model_:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->year_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->vehicleId_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Common$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->make_:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->model_:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->year_:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->vehicleId_:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Common$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Common;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$1700()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->build()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->build()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Common$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->make_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$1902(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->model_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2002(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->year_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2102(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x8

    .line 8
    :cond_3
    iget-object v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->vehicleId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2202(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x10

    .line 9
    :cond_4
    iget-object v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitMake_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2302(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x20

    .line 10
    :cond_5
    iget-object v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitModel_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2402(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x40

    .line 11
    :cond_6
    iget-object v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2502(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    or-int/lit16 v2, v2, 0x80

    .line 12
    :cond_7
    iget-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2602(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2702(Lcom/google/android/projection/proto/Common$HeadUnitInfo;I)I

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->make_:Ljava/lang/Object;

    .line 7
    iget v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    .line 8
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->model_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->year_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x5

    .line 10
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->vehicleId_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x9

    .line 11
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitMake_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x11

    .line 12
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitModel_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x21

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x41

    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    and-int/lit16 v0, v1, -0x81

    .line 15
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clear()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clear()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clear()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clear()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearHeadUnitMake()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitMake()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearHeadUnitModel()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitModel()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearHeadUnitSoftwareBuild()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitSoftwareBuild()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearHeadUnitSoftwareVersion()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitSoftwareVersion()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearMake()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getMake()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->make_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearModel()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getModel()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->model_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearVehicleId()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getVehicleId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->vehicleId_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearYear()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getYear()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->year_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clone()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clone()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clone()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clone()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clone()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->clone()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Common;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHeadUnitMake()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getHeadUnitMakeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadUnitModel()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getHeadUnitModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadUnitSoftwareBuild()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getHeadUnitSoftwareBuildBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadUnitSoftwareVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getHeadUnitSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->make_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->make_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getMakeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->make_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->make_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->model_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->model_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->model_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->model_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->vehicleId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->vehicleId_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getVehicleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->vehicleId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->vehicleId_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->year_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->year_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getYearBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->year_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->year_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public hasHeadUnitMake()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitModel()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitSoftwareBuild()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitSoftwareVersion()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMake()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasModel()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVehicleId()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasYear()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    invoke-static {}, Lcom/google/android/projection/proto/Common;->access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

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

.method public mergeFrom(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasMake()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 13
    invoke-static {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$1900(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->make_:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 17
    invoke-static {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2000(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->model_:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasYear()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 21
    invoke-static {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2100(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->year_:Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasVehicleId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 25
    invoke-static {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2200(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->vehicleId_:Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitMake()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 29
    invoke-static {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2300(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 31
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitModel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 33
    invoke-static {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2400(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 35
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitSoftwareBuild()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 37
    invoke-static {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2500(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 39
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitSoftwareVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 40
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 41
    invoke-static {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2600(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 43
    :cond_8
    invoke-static {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->access$2800(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 45
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
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

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    .line 50
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHeadUnitMake(Ljava/lang/String;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitMakeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitMake_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitModel(Ljava/lang/String;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitModelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitModel_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitSoftwareBuild(Ljava/lang/String;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitSoftwareBuildBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitSoftwareVersion(Ljava/lang/String;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setHeadUnitSoftwareVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setMake(Ljava/lang/String;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->make_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setMakeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->make_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->model_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setModelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->model_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVehicleId(Ljava/lang/String;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->vehicleId_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setVehicleIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->vehicleId_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setYear(Ljava/lang/String;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->year_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setYearBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->year_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method
