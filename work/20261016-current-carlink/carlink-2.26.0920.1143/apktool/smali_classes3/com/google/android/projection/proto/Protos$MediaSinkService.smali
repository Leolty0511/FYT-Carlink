.class public final Lcom/google/android/projection/proto/Protos$MediaSinkService;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$MediaSinkServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSinkService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_CONFIGS_FIELD_NUMBER:I = 0x3

.field public static final AUDIO_TYPE_FIELD_NUMBER:I = 0x2

.field public static final AVAILABLE_TYPE_FIELD_NUMBER:I = 0x1

.field public static final AVAILABLE_WHILE_IN_CALL_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSinkService;

.field public static final DISPLAY_ID_FIELD_NUMBER:I = 0x6

.field public static final DISPLAY_TYPE_FIELD_NUMBER:I = 0x7

.field public static final INITIAL_CONTENT_KEYCODE_FIELD_NUMBER:I = 0x8

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$MediaSinkService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIDEO_CONFIGS_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
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

.field private memoizedIsInitialized:B

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
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaSinkService$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->memoizedIsInitialized:B

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableType_:I

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioType_:I

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayType_:I

    .line 12
    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->initialContentKeycode_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8

    .line 13
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;-><init>()V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x8

    if-nez v1, :cond_12

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_f

    if-eq v4, v3, :cond_d

    const/16 v6, 0x10

    if-eq v4, v6, :cond_b

    const/16 v7, 0x1a

    if-eq v4, v7, :cond_9

    const/16 v7, 0x22

    if-eq v4, v7, :cond_7

    const/16 v7, 0x28

    if-eq v4, v7, :cond_6

    const/16 v7, 0x30

    if-eq v4, v7, :cond_5

    const/16 v7, 0x38

    if-eq v4, v7, :cond_3

    const/16 v6, 0x40

    if-eq v4, v6, :cond_1

    .line 17
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 19
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$KeyCode;->valueOf(I)Lcom/google/android/projection/proto/Protos$KeyCode;

    move-result-object v5

    if-nez v5, :cond_2

    .line 20
    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 21
    :cond_2
    iget v5, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 22
    iput v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->initialContentKeycode_:I

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 24
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$DisplayType;->valueOf(I)Lcom/google/android/projection/proto/Protos$DisplayType;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v5, 0x7

    .line 25
    invoke-virtual {v0, v5, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 26
    :cond_4
    iget v5, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 27
    iput v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayType_:I

    goto :goto_0

    .line 28
    :cond_5
    iget v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 29
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayId_:I

    goto :goto_0

    .line 30
    :cond_6
    iget v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableWhileInCall_:Z

    goto :goto_0

    :cond_7
    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_8

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 33
    :cond_8
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    sget-object v5, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    .line 35
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_a

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 37
    :cond_a
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    sget-object v5, Lcom/google/android/projection/proto/Protos$AudioConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 38
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    .line 39
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 40
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 41
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$AudioStreamType;->valueOf(I)Lcom/google/android/projection/proto/Protos$AudioStreamType;

    move-result-object v5

    const/4 v6, 0x2

    if-nez v5, :cond_c

    .line 42
    invoke-virtual {v0, v6, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 43
    :cond_c
    iget v5, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 44
    iput v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioType_:I

    goto/16 :goto_0

    .line 45
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 46
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->valueOf(I)Lcom/google/android/projection/proto/Protos$MediaCodecType;

    move-result-object v6

    if-nez v6, :cond_e

    .line 47
    invoke-virtual {v0, v5, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 48
    :cond_e
    iget v6, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 49
    iput v4, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableType_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_f
    :goto_1
    move v1, v5

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 50
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 51
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 52
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_10

    .line 53
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    :cond_10
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_11

    .line 54
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    .line 55
    :cond_11
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 56
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 57
    throw p1

    :cond_12
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_13

    .line 58
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_14

    .line 59
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    .line 60
    :cond_14
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 61
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaSinkService;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$17200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$17402(Lcom/google/android/projection/proto/Protos$MediaSinkService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableType_:I

    return p1
.end method

.method public static synthetic access$17502(Lcom/google/android/projection/proto/Protos$MediaSinkService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioType_:I

    return p1
.end method

.method public static synthetic access$17600(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$17602(Lcom/google/android/projection/proto/Protos$MediaSinkService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$17700(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$17702(Lcom/google/android/projection/proto/Protos$MediaSinkService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$17802(Lcom/google/android/projection/proto/Protos$MediaSinkService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableWhileInCall_:Z

    return p1
.end method

.method public static synthetic access$17902(Lcom/google/android/projection/proto/Protos$MediaSinkService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayId_:I

    return p1
.end method

.method public static synthetic access$18002(Lcom/google/android/projection/proto/Protos$MediaSinkService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayType_:I

    return p1
.end method

.method public static synthetic access$18102(Lcom/google/android/projection/proto/Protos$MediaSinkService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->initialContentKeycode_:I

    return p1
.end method

.method public static synthetic access$18202(Lcom/google/android/projection/proto/Protos$MediaSinkService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    return p1
.end method

.method public static synthetic access$18300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$18400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$18500(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$16800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$MediaSinkService;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAvailableType()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAvailableType()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    return v3

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAvailableType()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableType_:I

    .line 35
    .line 36
    iget v2, p1, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableType_:I

    .line 37
    .line 38
    if-eq v1, v2, :cond_3

    .line 39
    .line 40
    return v3

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAudioType()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAudioType()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eq v1, v2, :cond_4

    .line 50
    .line 51
    return v3

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAudioType()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioType_:I

    .line 59
    .line 60
    iget v2, p1, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioType_:I

    .line 61
    .line 62
    if-eq v1, v2, :cond_5

    .line 63
    .line 64
    return v3

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getAudioConfigsList()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getAudioConfigsList()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_6

    .line 78
    .line 79
    return v3

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getVideoConfigsList()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getVideoConfigsList()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_7

    .line 93
    .line 94
    return v3

    .line 95
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAvailableWhileInCall()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAvailableWhileInCall()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eq v1, v2, :cond_8

    .line 104
    .line 105
    return v3

    .line 106
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAvailableWhileInCall()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_9

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getAvailableWhileInCall()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getAvailableWhileInCall()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eq v1, v2, :cond_9

    .line 121
    .line 122
    return v3

    .line 123
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasDisplayId()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasDisplayId()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eq v1, v2, :cond_a

    .line 132
    .line 133
    return v3

    .line 134
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasDisplayId()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_b

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDisplayId()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDisplayId()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eq v1, v2, :cond_b

    .line 149
    .line 150
    return v3

    .line 151
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasDisplayType()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasDisplayType()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eq v1, v2, :cond_c

    .line 160
    .line 161
    return v3

    .line 162
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasDisplayType()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_d

    .line 167
    .line 168
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayType_:I

    .line 169
    .line 170
    iget v2, p1, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayType_:I

    .line 171
    .line 172
    if-eq v1, v2, :cond_d

    .line 173
    .line 174
    return v3

    .line 175
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasInitialContentKeycode()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasInitialContentKeycode()Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eq v1, v2, :cond_e

    .line 184
    .line 185
    return v3

    .line 186
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasInitialContentKeycode()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_f

    .line 191
    .line 192
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->initialContentKeycode_:I

    .line 193
    .line 194
    iget v2, p1, Lcom/google/android/projection/proto/Protos$MediaSinkService;->initialContentKeycode_:I

    .line 195
    .line 196
    if-eq v1, v2, :cond_f

    .line 197
    .line 198
    return v3

    .line 199
    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 200
    .line 201
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 202
    .line 203
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-nez p1, :cond_10

    .line 208
    .line 209
    return v3

    .line 210
    :cond_10
    return v0
.end method

.method public getAudioConfigs(I)Lcom/google/android/projection/proto/Protos$AudioConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    return-object p1
.end method

.method public getAudioConfigsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getAudioConfigsOrBuilder(I)Lcom/google/android/projection/proto/Protos$AudioConfigurationOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$AudioConfigurationOrBuilder;

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getAudioType()Lcom/google/android/projection/proto/Protos$AudioStreamType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioType_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableType_:I

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

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableWhileInCall_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaSinkService;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaSinkService;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayId_:I

    return v0
.end method

.method public getDisplayType()Lcom/google/android/projection/proto/Protos$DisplayType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayType_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->initialContentKeycode_:I

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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$MediaSinkService;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableType_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v2

    .line 23
    :goto_0
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    and-int/2addr v1, v3

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioType_:I

    .line 30
    .line 31
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_2
    move v1, v2

    .line 37
    :goto_1
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ge v1, v3, :cond_3

    .line 44
    .line 45
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 52
    .line 53
    const/4 v4, 0x3

    .line 54
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    add-int/2addr v0, v3

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v3, 0x4

    .line 69
    if-ge v2, v1, :cond_4

    .line 70
    .line 71
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 78
    .line 79
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    add-int/2addr v0, v1

    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 88
    .line 89
    and-int/2addr v1, v3

    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    const/4 v1, 0x5

    .line 93
    iget-boolean v2, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableWhileInCall_:Z

    .line 94
    .line 95
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    add-int/2addr v0, v1

    .line 100
    :cond_5
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 101
    .line 102
    const/16 v2, 0x8

    .line 103
    .line 104
    and-int/2addr v1, v2

    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    const/4 v1, 0x6

    .line 108
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayId_:I

    .line 109
    .line 110
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    :cond_6
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 116
    .line 117
    and-int/lit8 v1, v1, 0x10

    .line 118
    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    const/4 v1, 0x7

    .line 122
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayType_:I

    .line 123
    .line 124
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    add-int/2addr v0, v1

    .line 129
    :cond_7
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 130
    .line 131
    and-int/lit8 v1, v1, 0x20

    .line 132
    .line 133
    if-eqz v1, :cond_8

    .line 134
    .line 135
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->initialContentKeycode_:I

    .line 136
    .line 137
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    add-int/2addr v0, v1

    .line 142
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    add-int/2addr v1, v0

    .line 149
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 150
    .line 151
    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVideoConfigs(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p1
.end method

.method public getVideoConfigsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getVideoConfigsOrBuilder(I)Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public hasAudioType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit16 v0, v0, 0x30b

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAvailableType()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x25

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    const/16 v3, 0x35

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableType_:I

    .line 32
    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAudioType()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const/16 v1, 0x25

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    const/16 v3, 0x35

    .line 44
    .line 45
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioType_:I

    .line 50
    .line 51
    add-int/2addr v0, v1

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getAudioConfigsCount()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-lez v1, :cond_3

    .line 57
    .line 58
    const/16 v1, 0x25

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    const/16 v3, 0x35

    .line 62
    .line 63
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getAudioConfigsList()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/2addr v0, v1

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getVideoConfigsCount()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-lez v1, :cond_4

    .line 81
    .line 82
    const/16 v1, 0x25

    .line 83
    .line 84
    const/4 v2, 0x4

    .line 85
    const/16 v3, 0x35

    .line 86
    .line 87
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getVideoConfigsList()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    add-int/2addr v0, v1

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasAvailableWhileInCall()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    const/16 v1, 0x25

    .line 107
    .line 108
    const/4 v2, 0x5

    .line 109
    const/16 v3, 0x35

    .line 110
    .line 111
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getAvailableWhileInCall()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    add-int/2addr v0, v1

    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasDisplayId()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_6

    .line 129
    .line 130
    const/16 v1, 0x25

    .line 131
    .line 132
    const/4 v2, 0x6

    .line 133
    const/16 v3, 0x35

    .line 134
    .line 135
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getDisplayId()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    add-int/2addr v0, v1

    .line 144
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasDisplayType()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_7

    .line 149
    .line 150
    const/16 v1, 0x25

    .line 151
    .line 152
    const/4 v2, 0x7

    .line 153
    const/16 v3, 0x35

    .line 154
    .line 155
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayType_:I

    .line 160
    .line 161
    add-int/2addr v0, v1

    .line 162
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->hasInitialContentKeycode()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    const/16 v1, 0x25

    .line 169
    .line 170
    const/16 v2, 0x8

    .line 171
    .line 172
    const/16 v3, 0x35

    .line 173
    .line 174
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->initialContentKeycode_:I

    .line 179
    .line 180
    add-int/2addr v0, v1

    .line 181
    :cond_8
    mul-int/lit8 v0, v0, 0x1d

    .line 182
    .line 183
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    add-int/2addr v1, v0

    .line 190
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 191
    .line 192
    return v1
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
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    move v0, v2

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getAudioConfigsCount()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v0, v3, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->getAudioConfigs(I)Lcom/google/android/projection/proto/Protos$AudioConfiguration;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$AudioConfiguration;->isInitialized()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->memoizedIsInitialized:B

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->memoizedIsInitialized:B

    .line 35
    .line 36
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->newBuilder()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->newBuilderForType()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->newBuilderForType()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$MediaSinkService;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$MediaSinkService;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSinkService;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSinkService;)Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSinkService;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaSinkService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableType_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioType_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    move v1, v0

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v1, v2, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->audioConfigs_:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x4

    .line 55
    if-ge v0, v1, :cond_3

    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->videoConfigs_:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 64
    .line 65
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 72
    .line 73
    and-int/2addr v0, v2

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    const/4 v0, 0x5

    .line 77
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->availableWhileInCall_:Z

    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 80
    .line 81
    .line 82
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 83
    .line 84
    const/16 v1, 0x8

    .line 85
    .line 86
    and-int/2addr v0, v1

    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    const/4 v0, 0x6

    .line 90
    iget v2, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayId_:I

    .line 91
    .line 92
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 93
    .line 94
    .line 95
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 96
    .line 97
    and-int/lit8 v0, v0, 0x10

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    const/4 v0, 0x7

    .line 102
    iget v2, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->displayType_:I

    .line 103
    .line 104
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 105
    .line 106
    .line 107
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->bitField0_:I

    .line 108
    .line 109
    and-int/lit8 v0, v0, 0x20

    .line 110
    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSinkService;->initialContentKeycode_:I

    .line 114
    .line 115
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 116
    .line 117
    .line 118
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method
