.class public final Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$VersionResponseOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VersionResponseOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;
    }
.end annotation


# static fields
.field public static final CONNECTION_CONFIGURATION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$VersionResponseOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

.field private memoizedIsInitialized:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 12
    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->bitField0_:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->toBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 14
    :goto_1
    sget-object v4, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v2, v4}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 17
    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_2
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 18
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 19
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 20
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 23
    throw p1

    .line 24
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1602(Lcom/google/android/projection/proto/Protos$VersionResponseOptions;Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p1
.end method

.method public static synthetic access$1702(Lcom/google/android/projection/proto/Protos$VersionResponseOptions;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->bitField0_:I

    return p1
.end method

.method public static synthetic access$1800(Lcom/google/android/projection/proto/Protos$VersionResponseOptions;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->toBuilder()Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$VersionResponseOptions;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->toBuilder()Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$VersionResponseOptions;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$VersionResponseOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->hasConnectionConfiguration()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->hasConnectionConfiguration()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->hasConnectionConfiguration()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    return v3

    .line 49
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_4

    .line 58
    .line 59
    return v3

    .line 60
    :cond_4
    return v0
.end method

.method public getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConnectionConfigurationOrBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfigurationOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$VersionResponseOptions;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$VersionResponseOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->PARSER:Lcom/google/protobuf/Parser;

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr v2, v0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/2addr v0, v2

    .line 30
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 31
    .line 32
    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasConnectionConfiguration()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->hasConnectionConfiguration()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v1, v0

    .line 49
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 50
    .line 51
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$1100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

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
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->memoizedIsInitialized:B

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
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->newBuilder()Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->newBuilderForType()Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->newBuilderForType()Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VersionResponseOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$VersionResponseOptions;)Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->toBuilder()Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->toBuilder()Lcom/google/android/projection/proto/Protos$VersionResponseOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VersionResponseOptions;->getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
