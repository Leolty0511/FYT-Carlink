.class public final Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceName_:Ljava/lang/Object;

.field private labelText_:Ljava/lang/Object;

.field private largeIcon_:Lcom/google/protobuf/ByteString;

.field private mediumIcon_:Lcom/google/protobuf/ByteString;

.field private phoneInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Common$PhoneInfo;",
            "Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;",
            "Lcom/google/android/projection/proto/Common$PhoneInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

.field private smallIcon_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->smallIcon_:Lcom/google/protobuf/ByteString;

    .line 5
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mediumIcon_:Lcom/google/protobuf/ByteString;

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->largeIcon_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->labelText_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->deviceName_:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 11
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->smallIcon_:Lcom/google/protobuf/ByteString;

    .line 12
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mediumIcon_:Lcom/google/protobuf/ByteString;

    .line 13
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->largeIcon_:Lcom/google/protobuf/ByteString;

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->labelText_:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->deviceName_:Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$3000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Common$PhoneInfo;",
            "Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;",
            "Lcom/google/android/projection/proto/Common$PhoneInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->access$3400()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->getPhoneInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->build()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->build()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->smallIcon_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->access$3602(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mediumIcon_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->access$3702(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->largeIcon_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->access$3802(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x8

    .line 8
    :cond_3
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->labelText_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->access$3902(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x10

    .line 9
    :cond_4
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->deviceName_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->access$4002(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 10
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 11
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->access$4102(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Lcom/google/android/projection/proto/Common$PhoneInfo;)Lcom/google/android/projection/proto/Common$PhoneInfo;

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Common$PhoneInfo;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->access$4102(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Lcom/google/android/projection/proto/Common$PhoneInfo;)Lcom/google/android/projection/proto/Common$PhoneInfo;

    :goto_1
    or-int/lit8 v2, v2, 0x20

    .line 13
    :cond_6
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->access$4202(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;I)I

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->smallIcon_:Lcom/google/protobuf/ByteString;

    .line 7
    iget v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    .line 8
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mediumIcon_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->largeIcon_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v0, v1, -0x5

    const-string v1, ""

    .line 10
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->labelText_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x9

    .line 11
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->deviceName_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x11

    .line 12
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 16
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clear()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clear()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clear()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clear()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeviceName()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDeviceName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->deviceName_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearLabelText()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getLabelText()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->labelText_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearLargeIcon()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getLargeIcon()Lcom/google/protobuf/ByteString;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->largeIcon_:Lcom/google/protobuf/ByteString;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearMediumIcon()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getMediumIcon()Lcom/google/protobuf/ByteString;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mediumIcon_:Lcom/google/protobuf/ByteString;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPhoneInfo()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x21

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearSmallIcon()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getSmallIcon()Lcom/google/protobuf/ByteString;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->smallIcon_:Lcom/google/protobuf/ByteString;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->clone()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$3000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->deviceName_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->deviceName_:Ljava/lang/Object;

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

.method public getDeviceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->deviceName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->deviceName_:Ljava/lang/Object;

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

.method public getLabelText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->labelText_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->labelText_:Ljava/lang/Object;

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

.method public getLabelTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->labelText_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->labelText_:Ljava/lang/Object;

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

.method public getLargeIcon()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->largeIcon_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMediumIcon()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mediumIcon_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Common$PhoneInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$PhoneInfo;

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
    check-cast v0, Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPhoneInfoBuilder()Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->getPhoneInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPhoneInfoOrBuilder()Lcom/google/android/projection/proto/Common$PhoneInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/Common$PhoneInfoOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Common$PhoneInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getSmallIcon()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->smallIcon_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasDeviceName()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLabelText()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLargeIcon()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMediumIcon()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPhoneInfo()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSmallIcon()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

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

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$3100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

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

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasSmallIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getSmallIcon()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->setSmallIcon(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasMediumIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getMediumIcon()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->setMediumIcon(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getLargeIcon()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->setLargeIcon(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasLabelText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 19
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->access$3900(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->labelText_:Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 23
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->access$4000(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->deviceName_:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasPhoneInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergePhoneInfo(Lcom/google/android/projection/proto/Common$PhoneInfo;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    .line 27
    :cond_6
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->access$4300(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 29
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
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

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    .line 34
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergePhoneInfo(Lcom/google/android/projection/proto/Common$PhoneInfo;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x20

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Common$PhoneInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Common$PhoneInfo;->newBuilder(Lcom/google/android/projection/proto/Common$PhoneInfo;)Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Common$PhoneInfo;)Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

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
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x20

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->deviceName_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setDeviceNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->deviceName_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLabelText(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->labelText_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setLabelTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->labelText_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setLargeIcon(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->largeIcon_:Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setMediumIcon(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mediumIcon_:Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setPhoneInfo(Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;->build()Lcom/google/android/projection/proto/Common$PhoneInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;->build()Lcom/google/android/projection/proto/Common$PhoneInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPhoneInfo(Lcom/google/android/projection/proto/Common$PhoneInfo;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSmallIcon(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->smallIcon_:Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method
