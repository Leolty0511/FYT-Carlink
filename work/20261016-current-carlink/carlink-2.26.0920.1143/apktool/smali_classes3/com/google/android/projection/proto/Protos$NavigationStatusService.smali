.class public final Lcom/google/android/projection/proto/Protos$NavigationStatusService;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$NavigationStatusServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NavigationStatusService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;,
        Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;,
        Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;,
        Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptionsOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

.field public static final IMAGE_OPTIONS_FIELD_NUMBER:I = 0x3

.field public static final MINIMUM_INTERVAL_MS_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

.field private memoizedIsInitialized:B

.field private minimumIntervalMs_:I

.field private type_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->memoizedIsInitialized:B

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->type_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;-><init>()V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    const/16 v4, 0x10

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 13
    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 14
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 15
    :goto_1
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v2, v3}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 18
    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 20
    invoke-static {v2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_5

    .line 21
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 22
    :cond_5
    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    .line 23
    iput v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->type_:I

    goto :goto_0

    .line 24
    :cond_6
    iget v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    .line 25
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->minimumIntervalMs_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_2
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 26
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 27
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 28
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 31
    throw p1

    .line 32
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 33
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$39900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$40102(Lcom/google/android/projection/proto/Protos$NavigationStatusService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->minimumIntervalMs_:I

    return p1
.end method

.method public static synthetic access$40202(Lcom/google/android/projection/proto/Protos$NavigationStatusService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->type_:I

    return p1
.end method

.method public static synthetic access$40302(Lcom/google/android/projection/proto/Protos$NavigationStatusService;Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    return-object p1
.end method

.method public static synthetic access$40402(Lcom/google/android/projection/proto/Protos$NavigationStatusService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    return p1
.end method

.method public static synthetic access$40500(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$38300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasMinimumIntervalMs()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasMinimumIntervalMs()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasMinimumIntervalMs()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getMinimumIntervalMs()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getMinimumIntervalMs()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eq v1, v2, :cond_3

    .line 43
    .line 44
    return v3

    .line 45
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasType()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasType()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eq v1, v2, :cond_4

    .line 54
    .line 55
    return v3

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasType()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->type_:I

    .line 63
    .line 64
    iget v2, p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->type_:I

    .line 65
    .line 66
    if-eq v1, v2, :cond_5

    .line 67
    .line 68
    return v3

    .line 69
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasImageOptions()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasImageOptions()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eq v1, v2, :cond_6

    .line 78
    .line 79
    return v3

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasImageOptions()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getImageOptions()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getImageOptions()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_7

    .line 99
    .line 100
    return v3

    .line 101
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 104
    .line 105
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_8

    .line 110
    .line 111
    return v3

    .line 112
    :cond_8
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStatusService;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    move-result-object v0

    return-object v0
.end method

.method public getImageOptions()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getImageOptionsOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptionsOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->imageOptions_:Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMinimumIntervalMs()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->minimumIntervalMs_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$NavigationStatusService;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->minimumIntervalMs_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->type_:I

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v2, v0

    .line 34
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    .line 35
    .line 36
    and-int/lit8 v0, v0, 0x4

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getImageOptions()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v2, v0

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/2addr v0, v2

    .line 57
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 58
    .line 59
    return v0
.end method

.method public getType()Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->IMAGE:Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasImageOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMinimumIntervalMs()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasMinimumIntervalMs()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getMinimumIntervalMs()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasType()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const/16 v1, 0x25

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    const/16 v3, 0x35

    .line 46
    .line 47
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->type_:I

    .line 52
    .line 53
    add-int/2addr v0, v1

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasImageOptions()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    const/16 v1, 0x25

    .line 61
    .line 62
    const/4 v2, 0x3

    .line 63
    const/16 v3, 0x35

    .line 64
    .line 65
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getImageOptions()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    add-int/2addr v0, v1

    .line 78
    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 79
    .line 80
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    add-int/2addr v1, v0

    .line 87
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 88
    .line 89
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$38400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->memoizedIsInitialized:B

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasMinimumIntervalMs()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->memoizedIsInitialized:B

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasType()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->memoizedIsInitialized:B

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->hasImageOptions()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getImageOptions()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;->isInitialized()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->memoizedIsInitialized:B

    .line 46
    .line 47
    return v2

    .line 48
    :cond_4
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->memoizedIsInitialized:B

    .line 49
    .line 50
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->newBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->newBuilderForType()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->newBuilderForType()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationStatusService;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStatusService;)Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationStatusService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->minimumIntervalMs_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->type_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->bitField0_:I

    .line 24
    .line 25
    and-int/lit8 v0, v0, 0x4

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStatusService;->getImageOptions()Lcom/google/android/projection/proto/Protos$NavigationStatusService$ImageOptions;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
