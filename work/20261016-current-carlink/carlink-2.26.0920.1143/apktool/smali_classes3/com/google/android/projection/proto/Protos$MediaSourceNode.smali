.class public final Lcom/google/android/projection/proto/Protos$MediaSourceNode;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$MediaSourceNodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSourceNode;

.field public static final LISTS_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$MediaSourceNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOURCE_FIELD_NUMBER:I = 0x1

.field public static final START_FIELD_NUMBER:I = 0x2

.field public static final TOTAL_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private lists_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$MediaList;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private source_:Lcom/google/android/projection/proto/Protos$MediaSource;

.field private start_:I

.field private total_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->memoizedIsInitialized:B

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    const/16 v5, 0xa

    if-eq v3, v5, :cond_5

    const/16 v5, 0x10

    if-eq v3, v5, :cond_4

    const/16 v5, 0x18

    if-eq v3, v5, :cond_3

    const/16 v5, 0x22

    if-eq v3, v5, :cond_1

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_1
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    sget-object v4, Lcom/google/android/projection/proto/Protos$MediaList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Protos$MediaList;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->total_:I

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->start_:I

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->source_:Lcom/google/android/projection/proto/Protos$MediaSource;

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$MediaSource;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaSource$Builder;

    move-result-object v3

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    sget-object v5, Lcom/google/android/projection/proto/Protos$MediaSource;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/projection/proto/Protos$MediaSource;

    iput-object v5, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->source_:Lcom/google/android/projection/proto/Protos$MediaSource;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v5}, Lcom/google/android/projection/proto/Protos$MediaSource$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSource;)Lcom/google/android/projection/proto/Protos$MediaSource$Builder;

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$MediaSource$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaSource;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->source_:Lcom/google/android/projection/proto/Protos$MediaSource;

    :cond_7
    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_2
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

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

    :goto_3
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_a
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$216400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$216602(Lcom/google/android/projection/proto/Protos$MediaSourceNode;Lcom/google/android/projection/proto/Protos$MediaSource;)Lcom/google/android/projection/proto/Protos$MediaSource;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->source_:Lcom/google/android/projection/proto/Protos$MediaSource;

    return-object p1
.end method

.method public static synthetic access$216702(Lcom/google/android/projection/proto/Protos$MediaSourceNode;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->start_:I

    return p1
.end method

.method public static synthetic access$216802(Lcom/google/android/projection/proto/Protos$MediaSourceNode;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->total_:I

    return p1
.end method

.method public static synthetic access$216900(Lcom/google/android/projection/proto/Protos$MediaSourceNode;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$216902(Lcom/google/android/projection/proto/Protos$MediaSourceNode;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$217002(Lcom/google/android/projection/proto/Protos$MediaSourceNode;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    return p1
.end method

.method public static synthetic access$217100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$217200(Lcom/google/android/projection/proto/Protos$MediaSourceNode;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$216000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$MediaSourceNode;)Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSourceNode;)Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$MediaSourceNode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasSource()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasSource()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getSource()Lcom/google/android/projection/proto/Protos$MediaSource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getSource()Lcom/google/android/projection/proto/Protos$MediaSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$MediaSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasStart()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasStart()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getStart()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getStart()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasTotal()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasTotal()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasTotal()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getTotal()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getTotal()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getListsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getListsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaSourceNode;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    move-result-object v0

    return-object v0
.end method

.method public getLists(I)Lcom/google/android/projection/proto/Protos$MediaList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaList;

    return-object p1
.end method

.method public getListsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getListsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$MediaList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    return-object v0
.end method

.method public getListsOrBuilder(I)Lcom/google/android/projection/proto/Protos$MediaListOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaListOrBuilder;

    return-object p1
.end method

.method public getListsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$MediaListOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$MediaSourceNode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getSource()Lcom/google/android/projection/proto/Protos$MediaSource;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->start_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget v4, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->total_:I

    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public getSource()Lcom/google/android/projection/proto/Protos$MediaSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->source_:Lcom/google/android/projection/proto/Protos$MediaSource;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSource;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSource;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->source_:Lcom/google/android/projection/proto/Protos$MediaSource;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSource;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSource;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->start_:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->total_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasSource()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStart()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTotal()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v2, 0x1

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getSource()Lcom/google/android/projection/proto/Protos$MediaSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$MediaSource;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getStart()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasTotal()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    const/4 v2, 0x3

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getTotal()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getListsCount()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v1, 0x25

    const/4 v2, 0x4

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getListsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$216100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    const-class v2, Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->hasSource()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->memoizedIsInitialized:B

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getSource()Lcom/google/android/projection/proto/Protos$MediaSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaSource;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->memoizedIsInitialized:B

    return v2

    :cond_3
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getListsCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getLists(I)Lcom/google/android/projection/proto/Protos$MediaList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$MediaList;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->memoizedIsInitialized:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->newBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->newBuilderForType()Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->newBuilderForType()Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$MediaSourceNode;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaSourceNode;)Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->toBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->getSource()Lcom/google/android/projection/proto/Protos$MediaSource;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->start_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v2, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->total_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$MediaSourceNode;->lists_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
