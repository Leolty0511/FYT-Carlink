.class public final Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/EnergyModel$MaxRegenPowerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPowerOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private regenerationRateAtEnergyLevel_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;",
            ">;"
        }
    .end annotation
.end field

.field private regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTimeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private regenerationRateAtTime_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;",
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
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureRegenerationRateAtEnergyLevelIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private ensureRegenerationRateAtTimeIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

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
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$7300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getRegenerationRateAtEnergyLevelFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    and-int/2addr v2, v3

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 34
    .line 35
    return-object v0
.end method

.method private getRegenerationRateAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTimeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

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
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 35
    .line 36
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$7700()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getRegenerationRateAtEnergyLevelFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getRegenerationRateAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllRegenerationRateAtEnergyLevel(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;",
            ">;)",
            "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtEnergyLevelIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

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

.method public addAllRegenerationRateAtTime(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;",
            ">;)",
            "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtTimeIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

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

.method public addRegenerationRateAtEnergyLevel(ILcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtEnergyLevelIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRegenerationRateAtEnergyLevel(ILcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtEnergyLevelIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

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

.method public addRegenerationRateAtEnergyLevel(Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtEnergyLevelIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRegenerationRateAtEnergyLevel(Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtEnergyLevelIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

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

.method public addRegenerationRateAtEnergyLevelBuilder()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getRegenerationRateAtEnergyLevelFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;

    return-object v0
.end method

.method public addRegenerationRateAtEnergyLevelBuilder(I)Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getRegenerationRateAtEnergyLevelFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;

    return-object p1
.end method

.method public addRegenerationRateAtTime(ILcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtTimeIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRegenerationRateAtTime(ILcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtTimeIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

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

.method public addRegenerationRateAtTime(Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtTimeIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRegenerationRateAtTime(Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtTimeIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

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

.method public addRegenerationRateAtTimeBuilder()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getRegenerationRateAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;

    return-object v0
.end method

.method public addRegenerationRateAtTimeBuilder(I)Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getRegenerationRateAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 3

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/EnergyModel$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 5
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 7
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$7902(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$7902(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;Ljava/util/List;)Ljava/util/List;

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 11
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 13
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$8002(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$8002(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;Ljava/util/List;)Ljava/util/List;

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 8
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 12
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clear()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clear()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clear()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clear()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearRegenerationRateAtEnergyLevel()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x2

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

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

.method public clearRegenerationRateAtTime()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x3

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

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

.method public clone()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$7300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getRegenerationRateAtEnergyLevel(I)Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;

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
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;

    .line 19
    .line 20
    return-object p1
.end method

.method public getRegenerationRateAtEnergyLevelBuilder(I)Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getRegenerationRateAtEnergyLevelFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;

    return-object p1
.end method

.method public getRegenerationRateAtEnergyLevelBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getRegenerationRateAtEnergyLevelFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRegenerationRateAtEnergyLevelCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

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

.method public getRegenerationRateAtEnergyLevelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

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

.method public getRegenerationRateAtEnergyLevelOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevelOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevelOrBuilder;

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
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevelOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getRegenerationRateAtEnergyLevelOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

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

.method public getRegenerationRateAtTime(I)Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;

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
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;

    .line 19
    .line 20
    return-object p1
.end method

.method public getRegenerationRateAtTimeBuilder(I)Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getRegenerationRateAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;

    return-object p1
.end method

.method public getRegenerationRateAtTimeBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getRegenerationRateAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRegenerationRateAtTimeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

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

.method public getRegenerationRateAtTimeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

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

.method public getRegenerationRateAtTimeOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTimeOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTimeOrBuilder;

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
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTimeOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getRegenerationRateAtTimeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTimeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

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

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$7400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

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

.method public mergeFrom(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 3

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 12
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$7900(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$7900(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 15
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    goto :goto_0

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtEnergyLevelIsMutable()V

    .line 17
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$7900(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2

    .line 19
    :cond_2
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$7900(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 22
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 23
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$7900(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 24
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 25
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$8100()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getRegenerationRateAtEnergyLevelFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$7900(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 28
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_7

    .line 29
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$8000(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 30
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$8000(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 32
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    goto :goto_3

    .line 33
    :cond_6
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtTimeIsMutable()V

    .line 34
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$8000(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_4

    .line 36
    :cond_7
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$8000(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 37
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 39
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 40
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$8000(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    .line 41
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->bitField0_:I

    .line 42
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$8200()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 43
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->getRegenerationRateAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_8
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 44
    :cond_9
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$8000(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 45
    :cond_a
    :goto_4
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$8300(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    .line 46
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->access$8400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
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

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    .line 52
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeRegenerationRateAtEnergyLevel(I)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtEnergyLevelIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

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

.method public removeRegenerationRateAtTime(I)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtTimeIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

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

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRegenerationRateAtEnergyLevel(ILcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtEnergyLevelIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRegenerationRateAtEnergyLevel(ILcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevelBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtEnergyLevelIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtEnergyLevel_:Ljava/util/List;

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

.method public setRegenerationRateAtTime(ILcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtTimeIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRegenerationRateAtTime(ILcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->ensureRegenerationRateAtTimeIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->regenerationRateAtTime_:Ljava/util/List;

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

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method
