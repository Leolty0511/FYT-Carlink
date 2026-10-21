.class public final Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$UiConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$UiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$UiConfig$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$UiConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Action;",
            "Lcom/google/android/projection/proto/Protos$Action$Builder;",
            "Lcom/google/android/projection/proto/Protos$ActionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private actions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Action;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private contentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Insets;",
            "Lcom/google/android/projection/proto/Protos$Insets$Builder;",
            "Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

.field private marginsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Insets;",
            "Lcom/google/android/projection/proto/Protos$Insets$Builder;",
            "Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private margins_:Lcom/google/android/projection/proto/Protos$Insets;

.field private stableContentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Insets;",
            "Lcom/google/android/projection/proto/Protos$Insets$Builder;",
            "Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

.field private uiElements_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private uiTheme_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiTheme_:I

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiTheme_:I

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureActionsIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x20

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private ensureUiElementsIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x10

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private getActionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Action;",
            "Lcom/google/android/projection/proto/Protos$Action$Builder;",
            "Lcom/google/android/projection/proto/Protos$ActionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x20

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 35
    .line 36
    return-object v0
.end method

.method private getContentInsetsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Insets;",
            "Lcom/google/android/projection/proto/Protos$Insets$Builder;",
            "Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$20700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMarginsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Insets;",
            "Lcom/google/android/projection/proto/Protos$Insets$Builder;",
            "Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->marginsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getMargins()Lcom/google/android/projection/proto/Protos$Insets;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->marginsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->marginsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getStableContentInsetsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Insets;",
            "Lcom/google/android/projection/proto/Protos$Insets$Builder;",
            "Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getStableContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21100()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getMarginsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getContentInsetsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getStableContentInsetsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getActionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public addActions(ILcom/google/android/projection/proto/Protos$Action$Builder;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureActionsIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$Action$Builder;->build()Lcom/google/android/projection/proto/Protos$Action;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$Action$Builder;->build()Lcom/google/android/projection/proto/Protos$Action;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addActions(ILcom/google/android/projection/proto/Protos$Action;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureActionsIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

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

.method public addActions(Lcom/google/android/projection/proto/Protos$Action$Builder;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureActionsIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Action$Builder;->build()Lcom/google/android/projection/proto/Protos$Action;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Action$Builder;->build()Lcom/google/android/projection/proto/Protos$Action;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addActions(Lcom/google/android/projection/proto/Protos$Action;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureActionsIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

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

.method public addActionsBuilder()Lcom/google/android/projection/proto/Protos$Action$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getActionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Action;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Action;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$Action$Builder;

    return-object v0
.end method

.method public addActionsBuilder(I)Lcom/google/android/projection/proto/Protos$Action$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getActionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Action;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Action;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Action$Builder;

    return-object p1
.end method

.method public addAllActions(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$Action;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$UiConfig$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureActionsIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

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

.method public addAllUiElements(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$UiElement;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$UiConfig$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureUiElementsIsMutable()V

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$UiElement;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$UiElement;->getNumber()I

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

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addUiElements(Lcom/google/android/projection/proto/Protos$UiElement;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureUiElementsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiElement;->getNumber()I

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

.method public build()Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$UiConfig;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->build()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->build()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/Protos$UiConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$UiConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->marginsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21302(Lcom/google/android/projection/proto/Protos$UiConfig;Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$Insets;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21302(Lcom/google/android/projection/proto/Protos$UiConfig;Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets;

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_3

    .line 8
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21402(Lcom/google/android/projection/proto/Protos$UiConfig;Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$Insets;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21402(Lcom/google/android/projection/proto/Protos$UiConfig;Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets;

    :goto_2
    or-int/lit8 v2, v2, 0x2

    :cond_3
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_5

    .line 11
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_4

    .line 12
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21502(Lcom/google/android/projection/proto/Protos$UiConfig;Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets;

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$Insets;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21502(Lcom/google/android/projection/proto/Protos$UiConfig;Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets;

    :goto_3
    or-int/lit8 v2, v2, 0x4

    :cond_5
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    or-int/lit8 v2, v2, 0x8

    .line 14
    :cond_6
    iget v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiTheme_:I

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21602(Lcom/google/android/projection/proto/Protos$UiConfig;I)I

    .line 15
    iget v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    .line 16
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    .line 17
    iget v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21702(Lcom/google/android/projection/proto/Protos$UiConfig;Ljava/util/List;)Ljava/util/List;

    .line 19
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_9

    .line 20
    iget v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    .line 21
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 22
    iget v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 23
    :cond_8
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21802(Lcom/google/android/projection/proto/Protos$UiConfig;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 24
    :cond_9
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21802(Lcom/google/android/projection/proto/Protos$UiConfig;Ljava/util/List;)Ljava/util/List;

    .line 25
    :goto_4
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21902(Lcom/google/android/projection/proto/Protos$UiConfig;I)I

    .line 26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->marginsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 9
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 11
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    :goto_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 14
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 15
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 17
    :goto_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiTheme_:I

    and-int/lit8 v0, v0, -0x9

    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    .line 21
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 22
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 24
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    goto :goto_3

    .line 25
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_3
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clear()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clear()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clear()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clear()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearActions()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x21

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

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

.method public clearContentInsets()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x3

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearMargins()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->marginsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x2

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearStableContentInsets()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x5

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearUiElements()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x11

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public clearUiTheme()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiTheme_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clone()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clone()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clone()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clone()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clone()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->clone()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActions(I)Lcom/google/android/projection/proto/Protos$Action;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$Action;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$Action;

    .line 19
    .line 20
    return-object p1
.end method

.method public getActionsBuilder(I)Lcom/google/android/projection/proto/Protos$Action$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getActionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Action$Builder;

    return-object p1
.end method

.method public getActionsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Action$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getActionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActionsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

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

.method public getActionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Action;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

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

.method public getActionsOrBuilder(I)Lcom/google/android/projection/proto/Protos$ActionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$ActionOrBuilder;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$ActionOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getActionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$ActionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

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

.method public getContentInsets()Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$Insets;

    .line 19
    .line 20
    return-object v0
.end method

.method public getContentInsetsBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getContentInsetsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$Insets$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getContentInsetsOrBuilder()Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$20700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMargins()Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->marginsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$Insets;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMarginsBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getMarginsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$Insets$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMarginsOrBuilder()Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->marginsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getStableContentInsets()Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$Insets;

    .line 19
    .line 20
    return-object v0
.end method

.method public getStableContentInsetsBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getStableContentInsetsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$Insets$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getStableContentInsetsOrBuilder()Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getUiElements(I)Lcom/google/android/projection/proto/Protos$UiElement;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$22200()Lcom/google/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$UiElement;

    return-object p1
.end method

.method public getUiElementsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUiElementsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$UiElement;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$22200()Lcom/google/protobuf/Internal$ListAdapter$Converter;

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

.method public getUiTheme()Lcom/google/android/projection/proto/Protos$UiTheme;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiTheme_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$UiTheme;->valueOf(I)Lcom/google/android/projection/proto/Protos$UiTheme;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiTheme;->UI_THEME_AUTOMATIC:Lcom/google/android/projection/proto/Protos$UiTheme;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public hasContentInsets()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMargins()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStableContentInsets()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUiTheme()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$20800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

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

.method public mergeContentInsets(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$Insets;->newBuilder(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$Insets;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

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
    iget p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x2

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasMargins()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->getMargins()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeMargins(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasContentInsets()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->getContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeContentInsets(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasStableContentInsets()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->getStableContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeStableContentInsets(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasUiTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->getUiTheme()Lcom/google/android/projection/proto/Protos$UiTheme;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->setUiTheme(Lcom/google/android/projection/proto/Protos$UiTheme;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    .line 19
    :cond_4
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21700(Lcom/google/android/projection/proto/Protos$UiConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21700(Lcom/google/android/projection/proto/Protos$UiConfig;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    .line 22
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    goto :goto_0

    .line 23
    :cond_5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureUiElementsIsMutable()V

    .line 24
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21700(Lcom/google/android/projection/proto/Protos$UiConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 26
    :cond_6
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_8

    .line 27
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21800(Lcom/google/android/projection/proto/Protos$UiConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 28
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21800(Lcom/google/android/projection/proto/Protos$UiConfig;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 30
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    goto :goto_1

    .line 31
    :cond_7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureActionsIsMutable()V

    .line 32
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21800(Lcom/google/android/projection/proto/Protos$UiConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2

    .line 34
    :cond_8
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21800(Lcom/google/android/projection/proto/Protos$UiConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 35
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 36
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 38
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21800(Lcom/google/android/projection/proto/Protos$UiConfig;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    .line 39
    iget v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 40
    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$22000()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 41
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->getActionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 42
    :cond_a
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$21800(Lcom/google/android/projection/proto/Protos$UiConfig;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 43
    :cond_b
    :goto_2
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->access$22100(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 45
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$UiConfig;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$UiConfig;
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
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    .line 50
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$UiConfig;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/Protos$UiConfig;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeMargins(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->marginsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$Insets;->newBuilder(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$Insets;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

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
    iget p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x1

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeStableContentInsets(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$Insets;->newBuilder(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$Insets;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

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
    iget p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x4

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeActions(I)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureActionsIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

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

.method public setActions(ILcom/google/android/projection/proto/Protos$Action$Builder;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureActionsIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$Action$Builder;->build()Lcom/google/android/projection/proto/Protos$Action;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$Action$Builder;->build()Lcom/google/android/projection/proto/Protos$Action;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setActions(ILcom/google/android/projection/proto/Protos$Action;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureActionsIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->actions_:Ljava/util/List;

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

.method public setContentInsets(Lcom/google/android/projection/proto/Protos$Insets$Builder;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->build()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->build()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    return-object p0
.end method

.method public setContentInsets(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMargins(Lcom/google/android/projection/proto/Protos$Insets$Builder;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->marginsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->build()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->build()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMargins(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->marginsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStableContentInsets(Lcom/google/android/projection/proto/Protos$Insets$Builder;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->build()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->build()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    return-object p0
.end method

.method public setStableContentInsets(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsetsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    return-object p0
.end method

.method public setUiElements(ILcom/google/android/projection/proto/Protos$UiElement;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->ensureUiElementsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiElements_:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$UiElement;->getNumber()I

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

.method public setUiTheme(Lcom/google/android/projection/proto/Protos$UiTheme;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiTheme;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->uiTheme_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method
