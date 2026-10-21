.class public final Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$MediaSinkServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$MediaSinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$MediaSinkServiceOrBuilder;"
    }
.end annotation


# instance fields
.field private audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$AudioConfiguration;",
            "Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;",
            "Lcom/google/android/projection/proto/Protos$AudioConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private audioConfigs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$AudioConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private audioType_:I

.field private availableType_:I

.field private availableWhileInCall_:Z

.field private bitField0_:I

.field private displayId_:I

.field private displayType_:I

.field private initialContentKeycode_:I

.field private videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration;",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;",
            "Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private videoConfigs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->availableType_:I

    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioType_:I

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->displayType_:I

    .line 9
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->initialContentKeycode_:I

    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->availableType_:I

    .line 13
    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioType_:I

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->displayType_:I

    .line 17
    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->initialContentKeycode_:I

    .line 18
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureAudioConfigsIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

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
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private ensureVideoConfigsIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

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
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x8

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private getAudioConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$AudioConfiguration;",
            "Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;",
            "Lcom/google/android/projection/proto/Protos$AudioConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 35
    .line 36
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$16800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getVideoConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration;",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;",
            "Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x8

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 35
    .line 36
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17200()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getAudioConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getVideoConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllAudioConfigs(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$AudioConfiguration;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureAudioConfigsIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

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

.method public addAllVideoConfigs(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureVideoConfigsIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

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

.method public addAudioConfigs(ILcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureAudioConfigsIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAudioConfigs(ILcom/google/android/projection/proto/Protos$AudioConfiguration;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureAudioConfigsIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

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

.method public addAudioConfigs(Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureAudioConfigsIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAudioConfigs(Lcom/google/android/projection/proto/Protos$AudioConfiguration;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureAudioConfigsIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

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

.method public addAudioConfigsBuilder()Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getAudioConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/projection/proto/Protos$AudioConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;

    return-object v0
.end method

.method public addAudioConfigsBuilder(I)Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getAudioConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/Protos$AudioConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addVideoConfigs(ILcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureVideoConfigsIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addVideoConfigs(ILcom/google/android/projection/proto/Protos$VideoConfiguration;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureVideoConfigsIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

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

.method public addVideoConfigs(Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureVideoConfigsIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addVideoConfigs(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureVideoConfigsIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

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

.method public addVideoConfigsBuilder()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getVideoConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    return-object v0
.end method

.method public addVideoConfigsBuilder(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getVideoConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->availableType_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17402(Lcom/google/android/projection/proto/Protos$MediaSinkService;I)I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 6
    :cond_1
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioType_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17502(Lcom/google/android/projection/proto/Protos$MediaSinkService;I)I

    .line 7
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_3

    .line 8
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 10
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17602(Lcom/google/android/projection/proto/Protos$MediaSinkService;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17602(Lcom/google/android/projection/proto/Protos$MediaSinkService;Ljava/util/List;)Ljava/util/List;

    .line 13
    :goto_1
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_5

    .line 14
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    .line 15
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    .line 16
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 17
    :cond_4
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17702(Lcom/google/android/projection/proto/Protos$MediaSinkService;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17702(Lcom/google/android/projection/proto/Protos$MediaSinkService;Ljava/util/List;)Ljava/util/List;

    :goto_2
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_6

    .line 19
    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->availableWhileInCall_:Z

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17802(Lcom/google/android/projection/proto/Protos$MediaSinkService;Z)Z

    or-int/lit8 v2, v2, 0x4

    :cond_6
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_7

    .line 20
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->displayId_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17902(Lcom/google/android/projection/proto/Protos$MediaSinkService;I)I

    or-int/lit8 v2, v2, 0x8

    :cond_7
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_8

    or-int/lit8 v2, v2, 0x10

    .line 21
    :cond_8
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->displayType_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$18002(Lcom/google/android/projection/proto/Protos$MediaSinkService;I)I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    or-int/lit8 v2, v2, 0x20

    .line 22
    :cond_9
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->initialContentKeycode_:I

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$18102(Lcom/google/android/projection/proto/Protos$MediaSinkService;I)I

    .line 23
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$18202(Lcom/google/android/projection/proto/Protos$MediaSinkService;I)I

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->availableType_:I

    .line 7
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioType_:I

    and-int/lit8 v0, v1, -0x3

    .line 9
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 12
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->availableWhileInCall_:Z

    .line 19
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->displayId_:I

    and-int/lit8 v1, v1, -0x21

    .line 21
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->displayType_:I

    and-int/lit8 v1, v1, -0x41

    .line 22
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->initialContentKeycode_:I

    and-int/lit16 v0, v1, -0x81

    .line 23
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clear()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clear()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clear()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clear()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAudioConfigs()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x5

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

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

.method public clearAudioType()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearAvailableType()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->availableType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearAvailableWhileInCall()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->availableWhileInCall_:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearDisplayId()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->displayId_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearDisplayType()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->displayType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearInitialContentKeycode()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->initialContentKeycode_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearVideoConfigs()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x9

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

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

.method public clone()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudioConfigs(I)Lcom/google/android/projection/proto/Protos$AudioConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$AudioConfiguration;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    .line 19
    .line 20
    return-object p1
.end method

.method public getAudioConfigsBuilder(I)Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getAudioConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;

    return-object p1
.end method

.method public getAudioConfigsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getAudioConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAudioConfigsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

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

.method public getAudioConfigsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$AudioConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

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

.method public getAudioConfigsOrBuilder(I)Lcom/google/android/projection/proto/Protos$AudioConfigurationOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$AudioConfigurationOrBuilder;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$AudioConfigurationOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getAudioConfigsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$AudioConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

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

.method public getAudioType()Lcom/google/android/projection/proto/Protos$AudioStreamType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$AudioStreamType;->valueOf(I)Lcom/google/android/projection/proto/Protos$AudioStreamType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$AudioStreamType;->AUDIO_STREAM_GUIDANCE:Lcom/google/android/projection/proto/Protos$AudioStreamType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getAvailableType()Lcom/google/android/projection/proto/Protos$MediaCodecType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->availableType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->valueOf(I)Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_PCM:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getAvailableWhileInCall()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->availableWhileInCall_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$16800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->displayId_:I

    return v0
.end method

.method public getDisplayType()Lcom/google/android/projection/proto/Protos$DisplayType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->displayType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$DisplayType;->valueOf(I)Lcom/google/android/projection/proto/Protos$DisplayType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$DisplayType;->DISPLAY_TYPE_MAIN:Lcom/google/android/projection/proto/Protos$DisplayType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getInitialContentKeycode()Lcom/google/android/projection/proto/Protos$KeyCode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->initialContentKeycode_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$KeyCode;->valueOf(I)Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_UNKNOWN:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getVideoConfigs(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    .line 19
    .line 20
    return-object p1
.end method

.method public getVideoConfigsBuilder(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getVideoConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    return-object p1
.end method

.method public getVideoConfigsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getVideoConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoConfigsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

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

.method public getVideoConfigsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

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

.method public getVideoConfigsOrBuilder(I)Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getVideoConfigsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

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

.method public hasAudioType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAvailableType()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasAvailableWhileInCall()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDisplayId()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDisplayType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInitialContentKeycode()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$16900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getAudioConfigsCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getAudioConfigs(I)Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$AudioConfiguration;->isInitialized()Z

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
    const/4 v0, 0x1

    .line 24
    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 3

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAvailableType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getAvailableType()Lcom/google/android/projection/proto/Protos$MediaCodecType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->setAvailableType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAudioType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getAudioType()Lcom/google/android/projection/proto/Protos$AudioStreamType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->setAudioType(Lcom/google/android/projection/proto/Protos$AudioStreamType;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 16
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17600(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17600(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 19
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    goto :goto_0

    .line 20
    :cond_3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureAudioConfigsIsMutable()V

    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17600(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2

    .line 23
    :cond_4
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17600(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 24
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 26
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 27
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17600(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    .line 28
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 29
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$18300()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getAudioConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 31
    :cond_6
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17600(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 32
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    .line 33
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17700(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 34
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 35
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17700(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    .line 36
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    goto :goto_3

    .line 37
    :cond_8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureVideoConfigsIsMutable()V

    .line 38
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17700(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_4

    .line 40
    :cond_9
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17700(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 41
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 42
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 43
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 44
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17700(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    .line 45
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 46
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$18400()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 47
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->getVideoConfigsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_a
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 48
    :cond_b
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$17700(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 49
    :cond_c
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAvailableWhileInCall()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 50
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getAvailableWhileInCall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->setAvailableWhileInCall(Z)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    .line 51
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasDisplayId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 52
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->setDisplayId(I)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    .line 53
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasDisplayType()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 54
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDisplayType()Lcom/google/android/projection/proto/Protos$DisplayType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->setDisplayType(Lcom/google/android/projection/proto/Protos$DisplayType;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    .line 55
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasInitialContentKeycode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 56
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getInitialContentKeycode()Lcom/google/android/projection/proto/Protos$KeyCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->setInitialContentKeycode(Lcom/google/android/projection/proto/Protos$KeyCode;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    .line 57
    :cond_10
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->access$18500(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    .line 58
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 59
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSinkService;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$MediaSinkService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
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

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    .line 64
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeAudioConfigs(I)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureAudioConfigsIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

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

.method public removeVideoConfigs(I)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureVideoConfigsIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

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

.method public setAudioConfigs(ILcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureAudioConfigsIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$AudioConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAudioConfigs(ILcom/google/android/projection/proto/Protos$AudioConfiguration;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureAudioConfigsIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioConfigs_:Ljava/util/List;

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

.method public setAudioType(Lcom/google/android/projection/proto/Protos$AudioStreamType;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$AudioStreamType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->audioType_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setAvailableType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->availableType_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setAvailableWhileInCall(Z)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->availableWhileInCall_:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setDisplayId(I)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->displayId_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setDisplayType(Lcom/google/android/projection/proto/Protos$DisplayType;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$DisplayType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->displayType_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setInitialContentKeycode(Lcom/google/android/projection/proto/Protos$KeyCode;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->initialContentKeycode_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVideoConfigs(ILcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureVideoConfigsIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setVideoConfigs(ILcom/google/android/projection/proto/Protos$VideoConfiguration;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->ensureVideoConfigsIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->videoConfigs_:Ljava/util/List;

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
