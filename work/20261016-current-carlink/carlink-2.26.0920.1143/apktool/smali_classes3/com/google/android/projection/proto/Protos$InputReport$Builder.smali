.class public final Lcom/google/android/projection/proto/Protos$InputReport$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$InputReportOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$InputReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$InputReport$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$InputReportOrBuilder;"
    }
.end annotation


# instance fields
.field private absoluteEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$AbsoluteEvent;",
            "Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;",
            "Lcom/google/android/projection/proto/Protos$AbsoluteEventOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

.field private bitField0_:I

.field private dispChannelId_:I

.field private keyEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$KeyEvent;",
            "Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;",
            "Lcom/google/android/projection/proto/Protos$KeyEventOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

.field private relativeEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$RelativeEvent;",
            "Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;",
            "Lcom/google/android/projection/proto/Protos$RelativeEventOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

.field private timestamp_:J

.field private touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$TouchEvent;",
            "Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;",
            "Lcom/google/android/projection/proto/Protos$TouchEventOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

.field private touchpadEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$TouchEvent;",
            "Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;",
            "Lcom/google/android/projection/proto/Protos$TouchEventOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getAbsoluteEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$AbsoluteEvent;",
            "Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;",
            "Lcom/google/android/projection/proto/Protos$AbsoluteEventOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getAbsoluteEvent()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$118900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getKeyEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$KeyEvent;",
            "Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;",
            "Lcom/google/android/projection/proto/Protos$KeyEventOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRelativeEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$RelativeEvent;",
            "Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;",
            "Lcom/google/android/projection/proto/Protos$RelativeEventOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getTouchEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$TouchEvent;",
            "Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;",
            "Lcom/google/android/projection/proto/Protos$TouchEventOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getTouchpadEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$TouchEvent;",
            "Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;",
            "Lcom/google/android/projection/proto/Protos$TouchEventOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getTouchpadEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputReport;->access$119300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getTouchEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getKeyEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getAbsoluteEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getRelativeEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getTouchpadEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$InputReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InputReport;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->build()Lcom/google/android/projection/proto/Protos$InputReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->build()Lcom/google/android/projection/proto/Protos$InputReport;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputReport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$InputReport;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->timestamp_:J

    invoke-static {v0, v2, v3}, Lcom/google/android/projection/proto/Protos$InputReport;->access$119502(Lcom/google/android/projection/proto/Protos$InputReport;J)J

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->dispChannelId_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$InputReport;->access$119602(Lcom/google/android/projection/proto/Protos$InputReport;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$TouchEvent;

    :goto_1
    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$InputReport;->access$119702(Lcom/google/android/projection/proto/Protos$InputReport;Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$TouchEvent;

    or-int/lit8 v2, v2, 0x4

    :cond_3
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$KeyEvent;

    :goto_2
    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$InputReport;->access$119802(Lcom/google/android/projection/proto/Protos$InputReport;Lcom/google/android/projection/proto/Protos$KeyEvent;)Lcom/google/android/projection/proto/Protos$KeyEvent;

    or-int/lit8 v2, v2, 0x8

    :cond_5
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    :goto_3
    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$InputReport;->access$119902(Lcom/google/android/projection/proto/Protos$InputReport;Lcom/google/android/projection/proto/Protos$AbsoluteEvent;)Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    or-int/lit8 v2, v2, 0x10

    :cond_7
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$RelativeEvent;

    :goto_4
    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$InputReport;->access$120002(Lcom/google/android/projection/proto/Protos$InputReport;Lcom/google/android/projection/proto/Protos$RelativeEvent;)Lcom/google/android/projection/proto/Protos$RelativeEvent;

    or-int/lit8 v2, v2, 0x20

    :cond_9
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Protos$TouchEvent;

    :goto_5
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$InputReport;->access$120102(Lcom/google/android/projection/proto/Protos$InputReport;Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$TouchEvent;

    or-int/lit8 v2, v2, 0x40

    :cond_b
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$InputReport;->access$120202(Lcom/google/android/projection/proto/Protos$InputReport;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$InputReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$InputReport;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->timestamp_:J

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->dispChannelId_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_4

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clear()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clear()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clear()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clear()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAbsoluteEvent()Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDispChannelId()Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->dispChannelId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearKeyEvent()Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearRelativeEvent()Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearTimestamp()Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->timestamp_:J

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTouchEvent()Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearTouchpadEvent()Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clone()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clone()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clone()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clone()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clone()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->clone()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAbsoluteEvent()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    return-object v0
.end method

.method public getAbsoluteEventBuilder()Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getAbsoluteEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;

    return-object v0
.end method

.method public getAbsoluteEventOrBuilder()Lcom/google/android/projection/proto/Protos$AbsoluteEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$AbsoluteEventOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputReport;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputReport;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$118900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDispChannelId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->dispChannelId_:I

    return v0
.end method

.method public getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$KeyEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$KeyEvent;

    return-object v0
.end method

.method public getKeyEventBuilder()Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getKeyEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;

    return-object v0
.end method

.method public getKeyEventOrBuilder()Lcom/google/android/projection/proto/Protos$KeyEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$KeyEventOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$KeyEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RelativeEvent;

    return-object v0
.end method

.method public getRelativeEventBuilder()Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getRelativeEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;

    return-object v0
.end method

.method public getRelativeEventOrBuilder()Lcom/google/android/projection/proto/Protos$RelativeEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RelativeEventOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$TouchEvent;

    return-object v0
.end method

.method public getTouchEventBuilder()Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getTouchEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;

    return-object v0
.end method

.method public getTouchEventOrBuilder()Lcom/google/android/projection/proto/Protos$TouchEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$TouchEventOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTouchpadEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$TouchEvent;

    return-object v0
.end method

.method public getTouchpadEventBuilder()Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getTouchpadEventFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;

    return-object v0
.end method

.method public getTouchpadEventOrBuilder()Lcom/google/android/projection/proto/Protos$TouchEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$TouchEventOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasAbsoluteEvent()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDispChannelId()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasKeyEvent()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRelativeEvent()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimestamp()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTouchEvent()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTouchpadEvent()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$119000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$InputReport;

    const-class v2, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->hasTimestamp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->hasTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$TouchEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->hasKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$KeyEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->hasAbsoluteEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getAbsoluteEvent()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->hasRelativeEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->hasTouchpadEvent()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->getTouchpadEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$TouchEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAbsoluteEvent(Lcom/google/android/projection/proto/Protos$AbsoluteEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->newBuilder(Lcom/google/android/projection/proto/Protos$AbsoluteEvent;)Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$AbsoluteEvent;)Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$InputReport;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputReport;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputReport;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->setTimestamp(J)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasDispChannelId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getDispChannelId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->setDispChannelId(I)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeTouchEvent(Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeKeyEvent(Lcom/google/android/projection/proto/Protos$KeyEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasAbsoluteEvent()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getAbsoluteEvent()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeAbsoluteEvent(Lcom/google/android/projection/proto/Protos$AbsoluteEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasRelativeEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeRelativeEvent(Lcom/google/android/projection/proto/Protos$RelativeEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTouchpadEvent()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchpadEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeTouchpadEvent(Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    :cond_7
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->access$120300(Lcom/google/android/projection/proto/Protos$InputReport;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputReport;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputReport;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$InputReport;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputReport;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$InputReport;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputReport;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputReport;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeKeyEvent(Lcom/google/android/projection/proto/Protos$KeyEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$KeyEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$KeyEvent;->newBuilder(Lcom/google/android/projection/proto/Protos$KeyEvent;)Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$KeyEvent;)Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeRelativeEvent(Lcom/google/android/projection/proto/Protos$RelativeEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->newBuilder(Lcom/google/android/projection/proto/Protos$RelativeEvent;)Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RelativeEvent;)Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeTouchEvent(Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$TouchEvent;->newBuilder(Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeTouchpadEvent(Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$TouchEvent;->newBuilder(Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAbsoluteEvent(Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;->build()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public setAbsoluteEvent(Lcom/google/android/projection/proto/Protos$AbsoluteEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDispChannelId(I)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->dispChannelId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setKeyEvent(Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;->build()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public setKeyEvent(Lcom/google/android/projection/proto/Protos$KeyEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRelativeEvent(Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;->build()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRelativeEvent(Lcom/google/android/projection/proto/Protos$RelativeEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTimestamp(J)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->timestamp_:J

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTouchEvent(Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;->build()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTouchEvent(Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTouchpadEvent(Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;->build()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTouchpadEvent(Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEventBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method
