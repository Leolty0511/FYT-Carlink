.class public final Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$RadioPropertiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$RadioProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$RadioPropertiesOrBuilder;"
    }
.end annotation


# instance fields
.field private afSwitch_:Z

.field private audioLoopback_:Z

.field private backgroundTuner_:Z

.field private bitField0_:I

.field private channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Range;",
            "Lcom/google/android/projection/proto/Protos$Range$Builder;",
            "Lcom/google/android/projection/proto/Protos$RangeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private channelRange_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Range;",
            ">;"
        }
    .end annotation
.end field

.field private channelSpacing_:I

.field private channelSpacings_:Lcom/google/protobuf/Internal$IntList;

.field private muteCapability_:Z

.field private radioId_:I

.field private rds_:I

.field private region_:I

.field private stationPresetsAccess_:I

.field private ta_:Z

.field private trafficService_:I

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->type_:I

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 6
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$36800()Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 7
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->region_:I

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->rds_:I

    .line 9
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->trafficService_:I

    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->type_:I

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 14
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$36800()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 15
    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->region_:I

    .line 16
    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->rds_:I

    .line 17
    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->trafficService_:I

    .line 18
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureChannelRangeIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

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
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private ensureChannelSpacingsIsMutable()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$36900(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x8

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private getChannelRangeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Range;",
            "Lcom/google/android/projection/proto/Protos$Range$Builder;",
            "Lcom/google/android/projection/proto/Protos$RangeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 35
    .line 36
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$34400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$34800()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->getChannelRangeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllChannelRange(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$Range;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelRangeIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

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

.method public addAllChannelSpacings(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelSpacingsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

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

.method public addChannelRange(ILcom/google/android/projection/proto/Protos$Range$Builder;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelRangeIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$Range$Builder;->build()Lcom/google/android/projection/proto/Protos$Range;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$Range$Builder;->build()Lcom/google/android/projection/proto/Protos$Range;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addChannelRange(ILcom/google/android/projection/proto/Protos$Range;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelRangeIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

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

.method public addChannelRange(Lcom/google/android/projection/proto/Protos$Range$Builder;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelRangeIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Range$Builder;->build()Lcom/google/android/projection/proto/Protos$Range;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Range$Builder;->build()Lcom/google/android/projection/proto/Protos$Range;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addChannelRange(Lcom/google/android/projection/proto/Protos$Range;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelRangeIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

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

.method public addChannelRangeBuilder()Lcom/google/android/projection/proto/Protos$Range$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->getChannelRangeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Range;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Range;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$Range$Builder;

    return-object v0
.end method

.method public addChannelRangeBuilder(I)Lcom/google/android/projection/proto/Protos$Range$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->getChannelRangeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Range;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Range;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Range$Builder;

    return-object p1
.end method

.method public addChannelSpacings(I)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelSpacingsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

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

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioProperties;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioProperties;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$RadioProperties;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 5
    iget v2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->radioId_:I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35102(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I

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
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->type_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35202(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I

    .line 7
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_3

    .line 8
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 10
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35302(Lcom/google/android/projection/proto/Protos$RadioProperties;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35302(Lcom/google/android/projection/proto/Protos$RadioProperties;Ljava/util/List;)Ljava/util/List;

    .line 13
    :goto_1
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    .line 14
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 15
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 16
    :cond_4
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35402(Lcom/google/android/projection/proto/Protos$RadioProperties;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    .line 17
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacing_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35502(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I

    or-int/lit8 v2, v2, 0x4

    :cond_5
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_6

    .line 18
    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->backgroundTuner_:Z

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35602(Lcom/google/android/projection/proto/Protos$RadioProperties;Z)Z

    or-int/lit8 v2, v2, 0x8

    :cond_6
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_7

    or-int/lit8 v2, v2, 0x10

    .line 19
    :cond_7
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->region_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35702(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_8

    or-int/lit8 v2, v2, 0x20

    .line 20
    :cond_8
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->rds_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35802(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I

    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_9

    .line 21
    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->afSwitch_:Z

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35902(Lcom/google/android/projection/proto/Protos$RadioProperties;Z)Z

    or-int/lit8 v2, v2, 0x40

    :cond_9
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_a

    .line 22
    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ta_:Z

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$36002(Lcom/google/android/projection/proto/Protos$RadioProperties;Z)Z

    or-int/lit16 v2, v2, 0x80

    :cond_a
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_b

    or-int/lit16 v2, v2, 0x100

    .line 23
    :cond_b
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->trafficService_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$36102(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I

    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_c

    .line 24
    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->audioLoopback_:Z

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$36202(Lcom/google/android/projection/proto/Protos$RadioProperties;Z)Z

    or-int/lit16 v2, v2, 0x200

    :cond_c
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_d

    .line 25
    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->muteCapability_:Z

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$36302(Lcom/google/android/projection/proto/Protos$RadioProperties;Z)Z

    or-int/lit16 v2, v2, 0x400

    :cond_d
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_e

    .line 26
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->stationPresetsAccess_:I

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$36402(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I

    or-int/lit16 v2, v2, 0x800

    .line 27
    :cond_e
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$36502(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioProperties;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->radioId_:I

    .line 7
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->type_:I

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 10
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 12
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 14
    :goto_0
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$34900()Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 15
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    .line 16
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacing_:I

    and-int/lit8 v1, v1, -0x11

    .line 17
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->backgroundTuner_:Z

    and-int/lit8 v1, v1, -0x21

    .line 18
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->region_:I

    and-int/lit8 v1, v1, -0x41

    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->rds_:I

    and-int/lit16 v1, v1, -0x81

    .line 20
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->afSwitch_:Z

    and-int/lit16 v1, v1, -0x101

    .line 21
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ta_:Z

    and-int/lit16 v1, v1, -0x201

    .line 22
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->trafficService_:I

    and-int/lit16 v1, v1, -0x401

    .line 23
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->audioLoopback_:Z

    and-int/lit16 v1, v1, -0x801

    .line 24
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->muteCapability_:Z

    and-int/lit16 v1, v1, -0x1001

    .line 25
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->stationPresetsAccess_:I

    and-int/lit16 v0, v1, -0x2001

    .line 26
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clear()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clear()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clear()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clear()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAfSwitch()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->afSwitch_:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearAudioLoopback()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x801

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->audioLoopback_:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearBackgroundTuner()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->backgroundTuner_:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearChannelRange()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x5

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

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

.method public clearChannelSpacing()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacing_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearChannelSpacings()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$37000()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x9

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearMuteCapability()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x1001

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->muteCapability_:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearRadioId()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->radioId_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearRds()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->rds_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearRegion()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->region_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearStationPresetsAccess()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x2001

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->stationPresetsAccess_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearTa()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x201

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ta_:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearTrafficService()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x401

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->trafficService_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearType()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->type_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAfSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->afSwitch_:Z

    return v0
.end method

.method public getAudioLoopback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->audioLoopback_:Z

    return v0
.end method

.method public getBackgroundTuner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->backgroundTuner_:Z

    return v0
.end method

.method public getChannelRange(I)Lcom/google/android/projection/proto/Protos$Range;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$Range;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$Range;

    .line 19
    .line 20
    return-object p1
.end method

.method public getChannelRangeBuilder(I)Lcom/google/android/projection/proto/Protos$Range$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->getChannelRangeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Range$Builder;

    return-object p1
.end method

.method public getChannelRangeBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Range$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->getChannelRangeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChannelRangeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

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

.method public getChannelRangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Range;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

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

.method public getChannelRangeOrBuilder(I)Lcom/google/android/projection/proto/Protos$RangeOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$RangeOrBuilder;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$RangeOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getChannelRangeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$RangeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

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

.method public getChannelSpacing()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacing_:I

    return v0
.end method

.method public getChannelSpacings(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getChannelSpacingsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChannelSpacingsList()Ljava/util/List;
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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

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
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioProperties;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$34400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMuteCapability()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->muteCapability_:Z

    return v0
.end method

.method public getRadioId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->radioId_:I

    return v0
.end method

.method public getRds()Lcom/google/android/projection/proto/Protos$RdsType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->rds_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$RdsType;->valueOf(I)Lcom/google/android/projection/proto/Protos$RdsType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$RdsType;->NO_RDS:Lcom/google/android/projection/proto/Protos$RdsType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getRegion()Lcom/google/android/projection/proto/Protos$ItuRegion;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->region_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$ItuRegion;->valueOf(I)Lcom/google/android/projection/proto/Protos$ItuRegion;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$ItuRegion;->RADIO_REGION_NONE:Lcom/google/android/projection/proto/Protos$ItuRegion;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStationPresetsAccess()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->stationPresetsAccess_:I

    return v0
.end method

.method public getTa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ta_:Z

    return v0
.end method

.method public getTrafficService()Lcom/google/android/projection/proto/Protos$TrafficServiceType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->trafficService_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$TrafficServiceType;->valueOf(I)Lcom/google/android/projection/proto/Protos$TrafficServiceType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$TrafficServiceType;->NO_TRAFFIC_SERVICE:Lcom/google/android/projection/proto/Protos$TrafficServiceType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getType()Lcom/google/android/projection/proto/Protos$RadioType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$RadioType;->valueOf(I)Lcom/google/android/projection/proto/Protos$RadioType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioType;->AM_RADIO:Lcom/google/android/projection/proto/Protos$RadioType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public hasAfSwitch()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAudioLoopback()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBackgroundTuner()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChannelSpacing()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMuteCapability()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRadioId()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRds()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRegion()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStationPresetsAccess()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTa()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrafficService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$34500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$RadioProperties;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->hasRadioId()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->hasType()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->hasChannelSpacing()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    move v0, v1

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->getChannelRangeCount()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge v0, v2, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->getChannelRange(I)Lcom/google/android/projection/proto/Protos$Range;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$Range;->isInitialized()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    return v1

    .line 41
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    const/4 v0, 0x1

    .line 45
    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioProperties;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRadioId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getRadioId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setRadioId(I)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getType()Lcom/google/android/projection/proto/Protos$RadioType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setType(Lcom/google/android/projection/proto/Protos$RadioType;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 16
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35300(Lcom/google/android/projection/proto/Protos$RadioProperties;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35300(Lcom/google/android/projection/proto/Protos$RadioProperties;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 19
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    goto :goto_0

    .line 20
    :cond_3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelRangeIsMutable()V

    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35300(Lcom/google/android/projection/proto/Protos$RadioProperties;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 23
    :cond_4
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35300(Lcom/google/android/projection/proto/Protos$RadioProperties;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 24
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 27
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35300(Lcom/google/android/projection/proto/Protos$RadioProperties;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    .line 28
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 29
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$36600()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 30
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->getChannelRangeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 31
    :cond_6
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35300(Lcom/google/android/projection/proto/Protos$RadioProperties;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 32
    :cond_7
    :goto_1
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35400(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 33
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35400(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 35
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    goto :goto_2

    .line 36
    :cond_8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelSpacingsIsMutable()V

    .line 37
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$35400(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 39
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasChannelSpacing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelSpacing()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setChannelSpacing(I)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 41
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasBackgroundTuner()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 42
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getBackgroundTuner()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setBackgroundTuner(Z)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 43
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 44
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getRegion()Lcom/google/android/projection/proto/Protos$ItuRegion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setRegion(Lcom/google/android/projection/proto/Protos$ItuRegion;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 45
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRds()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 46
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getRds()Lcom/google/android/projection/proto/Protos$RdsType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setRds(Lcom/google/android/projection/proto/Protos$RdsType;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 47
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasAfSwitch()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 48
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getAfSwitch()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setAfSwitch(Z)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 49
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasTa()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 50
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getTa()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setTa(Z)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 51
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasTrafficService()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 52
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getTrafficService()Lcom/google/android/projection/proto/Protos$TrafficServiceType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setTrafficService(Lcom/google/android/projection/proto/Protos$TrafficServiceType;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 53
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasAudioLoopback()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 54
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getAudioLoopback()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setAudioLoopback(Z)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 55
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasMuteCapability()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 56
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getMuteCapability()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setMuteCapability(Z)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 57
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasStationPresetsAccess()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 58
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getStationPresetsAccess()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setStationPresetsAccess(I)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 59
    :cond_13
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->access$36700(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 60
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 61
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioProperties;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$RadioProperties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
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

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    .line 66
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$RadioProperties;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioProperties;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeChannelRange(I)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelRangeIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

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

.method public setAfSwitch(Z)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->afSwitch_:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setAudioLoopback(Z)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x800

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->audioLoopback_:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setBackgroundTuner(Z)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->backgroundTuner_:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setChannelRange(ILcom/google/android/projection/proto/Protos$Range$Builder;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelRangeIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$Range$Builder;->build()Lcom/google/android/projection/proto/Protos$Range;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$Range$Builder;->build()Lcom/google/android/projection/proto/Protos$Range;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChannelRange(ILcom/google/android/projection/proto/Protos$Range;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRangeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelRangeIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelRange_:Ljava/util/List;

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

.method public setChannelSpacing(I)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacing_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setChannelSpacings(II)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ensureChannelSpacingsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

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

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMuteCapability(Z)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x1000

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->muteCapability_:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setRadioId(I)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->radioId_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setRds(Lcom/google/android/projection/proto/Protos$RdsType;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->rds_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setRegion(Lcom/google/android/projection/proto/Protos$ItuRegion;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ItuRegion;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->region_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStationPresetsAccess(I)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x2000

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->stationPresetsAccess_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setTa(Z)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->ta_:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setTrafficService(Lcom/google/android/projection/proto/Protos$TrafficServiceType;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x400

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TrafficServiceType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->trafficService_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setType(Lcom/google/android/projection/proto/Protos$RadioType;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->type_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method
