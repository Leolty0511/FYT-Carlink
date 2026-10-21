.class public final Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$InputSourceServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$InputSourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$InputSourceServiceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayId_:I

.field private feedbackEventsSupported_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

.field private touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private touchpad_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;",
            ">;"
        }
    .end annotation
.end field

.field private touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private touchscreen_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31700()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31700()Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureFeedbackEventsSupportedIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x8

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private ensureKeycodesSupportedIsMutable()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31800(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private ensureTouchpadIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private ensureTouchscreenIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$27100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTouchpadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x4

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 35
    .line 36
    return-object v0
.end method

.method private getTouchscreenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 35
    .line 36
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30500()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchscreenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchpadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllFeedbackEventsSupported(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$FeedbackEvent;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureFeedbackEventsSupportedIsMutable()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$FeedbackEvent;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->getNumber()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method

.method public addAllKeycodesSupported(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureKeycodesSupportedIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public addAllTouchpad(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchpadIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public addAllTouchscreen(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchscreenIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public addFeedbackEventsSupported(Lcom/google/android/projection/proto/Protos$FeedbackEvent;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureFeedbackEventsSupportedIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public addKeycodesSupported(I)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureKeycodesSupportedIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addTouchpad(ILcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchpadIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTouchpad(ILcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchpadIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTouchpad(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchpadIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTouchpad(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchpadIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTouchpadBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchpadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    return-object v0
.end method

.method public addTouchpadBuilder(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchpadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    return-object p1
.end method

.method public addTouchscreen(ILcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchscreenIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTouchscreen(ILcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchscreenIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTouchscreen(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchscreenIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTouchscreen(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchscreenIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTouchscreenBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchscreenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    return-object v0
.end method

.method public addTouchscreenBuilder(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchscreenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 3

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 6
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30802(Lcom/google/android/projection/proto/Protos$InputSourceService;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 8
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_2

    .line 9
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 11
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30902(Lcom/google/android/projection/proto/Protos$InputSourceService;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30902(Lcom/google/android/projection/proto/Protos$InputSourceService;Ljava/util/List;)Ljava/util/List;

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_4

    .line 15
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 17
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 18
    :cond_3
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31002(Lcom/google/android/projection/proto/Protos$InputSourceService;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31002(Lcom/google/android/projection/proto/Protos$InputSourceService;Ljava/util/List;)Ljava/util/List;

    .line 20
    :goto_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 21
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    .line 22
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 23
    :cond_5
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31102(Lcom/google/android/projection/proto/Protos$InputSourceService;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    .line 24
    iget v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->displayId_:I

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31202(Lcom/google/android/projection/proto/Protos$InputSourceService;I)I

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 25
    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31302(Lcom/google/android/projection/proto/Protos$InputSourceService;I)I

    .line 26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30600()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 10
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 14
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 16
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    .line 17
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->displayId_:I

    and-int/lit8 v0, v0, -0x11

    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clear()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clear()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clear()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clear()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDisplayId()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->displayId_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearFeedbackEventsSupported()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x9

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearKeycodesSupported()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31900()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x2

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearTouchpad()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x5

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public clearTouchscreen()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x3

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clone()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clone()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clone()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clone()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clone()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->clone()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$27100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->displayId_:I

    return v0
.end method

.method public getFeedbackEventsSupported(I)Lcom/google/android/projection/proto/Protos$FeedbackEvent;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$32000()Lcom/google/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$FeedbackEvent;

    return-object p1
.end method

.method public getFeedbackEventsSupportedCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFeedbackEventsSupportedList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$FeedbackEvent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$32000()Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getKeycodesSupported(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getKeycodesSupportedCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getKeycodesSupportedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public getTouchpad(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    .line 19
    .line 20
    return-object p1
.end method

.method public getTouchpadBuilder(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchpadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    return-object p1
.end method

.method public getTouchpadBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchpadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTouchpadCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getTouchpadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getTouchpadOrBuilder(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getTouchpadOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getTouchscreen(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    .line 19
    .line 20
    return-object p1
.end method

.method public getTouchscreenBuilder(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchscreenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    return-object p1
.end method

.method public getTouchscreenBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchscreenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTouchscreenCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getTouchscreenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getTouchscreenOrBuilder(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getTouchscreenOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public hasDisplayId()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$27200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

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
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchscreenCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchscreen(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->isInitialized()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v1, v0

    .line 24
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchpadCount()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge v1, v2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchpad(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->isInitialized()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    return v0

    .line 41
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const/4 v0, 0x1

    .line 45
    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 3

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30800(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30800(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    goto :goto_0

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureKeycodesSupportedIsMutable()V

    .line 16
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30800(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 19
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30900(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30900(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 22
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    goto :goto_1

    .line 23
    :cond_3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchscreenIsMutable()V

    .line 24
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30900(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_3

    .line 26
    :cond_4
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30900(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 27
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 29
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30900(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 31
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 32
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31400()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchscreenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_3

    .line 34
    :cond_6
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$30900(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 35
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    .line 36
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31000(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 37
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31000(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 39
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    goto :goto_4

    .line 40
    :cond_8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchpadIsMutable()V

    .line 41
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31000(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_5

    .line 43
    :cond_9
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31000(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 44
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 46
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 47
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31000(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 48
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 49
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31500()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 50
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->getTouchpadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_a
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    .line 51
    :cond_b
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31000(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 52
    :cond_c
    :goto_5
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31100(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 53
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 54
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31100(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    .line 55
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    goto :goto_6

    .line 56
    :cond_d
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureFeedbackEventsSupportedIsMutable()V

    .line 57
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31100(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 59
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->hasDisplayId()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 60
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->setDisplayId(I)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    .line 61
    :cond_f
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->access$31600(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    .line 62
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 63
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$InputSourceService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
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

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    .line 68
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$InputSourceService;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeTouchpad(I)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchpadIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public removeTouchscreen(I)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchscreenIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public setDisplayId(I)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->displayId_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setFeedbackEventsSupported(ILcom/google/android/projection/proto/Protos$FeedbackEvent;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureFeedbackEventsSupportedIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->feedbackEventsSupported_:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setKeycodesSupported(II)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureKeycodesSupportedIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTouchpad(ILcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchpadIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTouchpad(ILcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchpadIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchpad_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTouchscreen(ILcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchscreenIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;->build()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTouchscreen(ILcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->ensureTouchscreenIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->touchscreen_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method
