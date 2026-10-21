.class public final Lcom/google/android/projection/proto/Protos$NavigationStep;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$NavigationStepOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NavigationStep"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    }
.end annotation


# static fields
.field public static final CUE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStep;

.field public static final LANES_FIELD_NUMBER:I = 0x3

.field public static final MANEUVER_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$NavigationStep;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROAD_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

.field private lanes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationLane;",
            ">;"
        }
    .end annotation
.end field

.field private maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

.field private memoizedIsInitialized:B

.field private road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$NavigationStep;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStep;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStep$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$NavigationStep$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->memoizedIsInitialized:B

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_e

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v3, v5, :cond_9

    const/16 v5, 0x12

    if-eq v3, v5, :cond_6

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_4

    const/16 v5, 0x22

    if-eq v3, v5, :cond_1

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_1
    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$NavigationCue;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;

    move-result-object v6

    :cond_2
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationCue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$NavigationCue;

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    if-eqz v6, :cond_3

    invoke-virtual {v6, v3}, Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationCue;)Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;

    invoke-virtual {v6}, Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    :cond_3
    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    goto :goto_0

    :cond_4
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    :cond_5
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    sget-object v4, Lcom/google/android/projection/proto/Protos$NavigationLane;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Protos$NavigationLane;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$NavigationRoad;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;

    move-result-object v6

    :cond_7
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationRoad;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$NavigationRoad;

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    if-eqz v6, :cond_8

    invoke-virtual {v6, v3}, Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;

    invoke-virtual {v6}, Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    :cond_8
    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    goto/16 :goto_0

    :cond_9
    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$NavigationManeuver;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;

    move-result-object v6

    :cond_a
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationManeuver;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    if-eqz v6, :cond_b

    invoke-virtual {v6, v3}, Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationManeuver;)Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;

    invoke-virtual {v6}, Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    :cond_b
    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_1
    move v1, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_e
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStep;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$192300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$192502(Lcom/google/android/projection/proto/Protos$NavigationStep;Lcom/google/android/projection/proto/Protos$NavigationManeuver;)Lcom/google/android/projection/proto/Protos$NavigationManeuver;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    return-object p1
.end method

.method public static synthetic access$192602(Lcom/google/android/projection/proto/Protos$NavigationStep;Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationRoad;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    return-object p1
.end method

.method public static synthetic access$192700(Lcom/google/android/projection/proto/Protos$NavigationStep;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$192702(Lcom/google/android/projection/proto/Protos$NavigationStep;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$192802(Lcom/google/android/projection/proto/Protos$NavigationStep;Lcom/google/android/projection/proto/Protos$NavigationCue;)Lcom/google/android/projection/proto/Protos$NavigationCue;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    return-object p1
.end method

.method public static synthetic access$192902(Lcom/google/android/projection/proto/Protos$NavigationStep;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    return p1
.end method

.method public static synthetic access$193000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$193100(Lcom/google/android/projection/proto/Protos$NavigationStep;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$191900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStep;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$NavigationStep;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStep;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStep;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$NavigationStep;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$NavigationStep;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStep;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasManeuver()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasManeuver()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasManeuver()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getManeuver()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getManeuver()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$NavigationManeuver;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasRoad()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasRoad()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasRoad()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$NavigationRoad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getLanesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getLanesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasCue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasCue()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasCue()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getCue()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getCue()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$NavigationCue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v0
.end method

.method public getCue()Lcom/google/android/projection/proto/Protos$NavigationCue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationCue;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCueOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationCueOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationCue;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStep;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStep;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStep;

    move-result-object v0

    return-object v0
.end method

.method public getLanes(I)Lcom/google/android/projection/proto/Protos$NavigationLane;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationLane;

    return-object p1
.end method

.method public getLanesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLanesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationLane;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    return-object v0
.end method

.method public getLanesOrBuilder(I)Lcom/google/android/projection/proto/Protos$NavigationLaneOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationLaneOrBuilder;

    return-object p1
.end method

.method public getLanesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$NavigationLaneOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    return-object v0
.end method

.method public getManeuver()Lcom/google/android/projection/proto/Protos$NavigationManeuver;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationManeuver;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getManeuverOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationManeuverOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationManeuver;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$NavigationStep;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationRoad;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRoadOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationRoadOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationRoad;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getManeuver()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getCue()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCue()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasManeuver()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRoad()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasManeuver()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v2, 0x1

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getManeuver()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$NavigationManeuver;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasRoad()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$NavigationRoad;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getLanesCount()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x25

    const/4 v2, 0x3

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getLanesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasCue()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x25

    const/4 v2, 0x4

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getCue()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$NavigationCue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$192000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$NavigationStep;

    const-class v2, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStep;->newBuilder()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->newBuilderForType()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->newBuilderForType()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$NavigationStep;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStep;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStep;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStep;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getManeuver()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->lanes_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getCue()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
