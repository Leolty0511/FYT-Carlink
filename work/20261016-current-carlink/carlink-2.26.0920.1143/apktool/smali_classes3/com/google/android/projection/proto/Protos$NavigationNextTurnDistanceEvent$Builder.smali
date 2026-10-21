.class public final Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEventOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayDistanceE3_:I

.field private displayDistanceUnit_:I

.field private distanceMeters_:I

.field private timeToTurnSeconds_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->displayDistanceUnit_:I

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->displayDistanceUnit_:I

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$189400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->access$189800()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->distanceMeters_:I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->access$190002(Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->timeToTurnSeconds_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->access$190102(Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->displayDistanceE3_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->access$190202(Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;I)I

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 v2, v2, 0x8

    :cond_3
    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->displayDistanceUnit_:I

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->access$190302(Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;I)I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->access$190402(Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->distanceMeters_:I

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->timeToTurnSeconds_:I

    and-int/lit8 v1, v1, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->displayDistanceE3_:I

    and-int/lit8 v1, v1, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->displayDistanceUnit_:I

    and-int/lit8 v0, v1, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDisplayDistanceE3()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->displayDistanceE3_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDisplayDistanceUnit()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->displayDistanceUnit_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDistanceMeters()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->distanceMeters_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearTimeToTurnSeconds()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->timeToTurnSeconds_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$189400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayDistanceE3()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->displayDistanceE3_:I

    return v0
.end method

.method public getDisplayDistanceUnit()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->displayDistanceUnit_:I

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->UNKNOWN_DISTANCE_UNIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    :cond_0
    return-object v0
.end method

.method public getDistanceMeters()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->distanceMeters_:I

    return v0
.end method

.method public getTimeToTurnSeconds()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->timeToTurnSeconds_:I

    return v0
.end method

.method public hasDisplayDistanceE3()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDisplayDistanceUnit()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDistanceMeters()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTimeToTurnSeconds()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$189500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    const-class v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->hasDistanceMeters()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->hasTimeToTurnSeconds()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->hasDistanceMeters()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->getDistanceMeters()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->setDistanceMeters(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->hasTimeToTurnSeconds()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->getTimeToTurnSeconds()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->setTimeToTurnSeconds(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->hasDisplayDistanceE3()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->getDisplayDistanceE3()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->setDisplayDistanceE3(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->hasDisplayDistanceUnit()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->getDisplayDistanceUnit()Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->setDisplayDistanceUnit(Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    :cond_4
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->access$190500(Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDisplayDistanceE3(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->displayDistanceE3_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDisplayDistanceUnit(Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$DistanceUnits;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->displayDistanceUnit_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDistanceMeters(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->distanceMeters_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTimeToTurnSeconds(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->timeToTurnSeconds_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnDistanceEvent$Builder;

    move-result-object p1

    return-object p1
.end method
