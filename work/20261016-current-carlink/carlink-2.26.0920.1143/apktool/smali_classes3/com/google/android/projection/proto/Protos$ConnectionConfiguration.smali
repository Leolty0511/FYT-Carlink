.class public final Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$ConnectionConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PING_CONFIGURATION_FIELD_NUMBER:I = 0x1

.field public static final WIRELESS_TCP_CONFIGURATION_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

.field private wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 12
    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->toBuilder()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    move-result-object v5

    .line 14
    :cond_2
    sget-object v2, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    if-eqz v5, :cond_3

    .line 15
    invoke-virtual {v5, v2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 17
    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I

    goto :goto_0

    .line 18
    :cond_4
    iget v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 19
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$PingConfiguration;->toBuilder()Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;

    move-result-object v5

    .line 20
    :cond_5
    sget-object v2, Lcom/google/android/projection/proto/Protos$PingConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$PingConfiguration;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    if-eqz v5, :cond_6

    .line 21
    invoke-virtual {v5, v2}, Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$PingConfiguration;)Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;

    .line 22
    invoke-virtual {v5}, Lcom/google/android/projection/proto/Protos$PingConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 23
    :cond_6
    iget v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 24
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 25
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 29
    throw p1

    .line 30
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$10800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$11002(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;Lcom/google/android/projection/proto/Protos$PingConfiguration;)Lcom/google/android/projection/proto/Protos$PingConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    return-object p1
.end method

.method public static synthetic access$11102(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;)Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    return-object p1
.end method

.method public static synthetic access$11202(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I

    return p1
.end method

.method public static synthetic access$11300(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$10400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->toBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->toBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->hasPingConfiguration()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->hasPingConfiguration()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->hasPingConfiguration()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getPingConfiguration()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getPingConfiguration()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$PingConfiguration;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->hasWirelessTcpConfiguration()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->hasWirelessTcpConfiguration()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eq v1, v2, :cond_4

    .line 58
    .line 59
    return v3

    .line 60
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->hasWirelessTcpConfiguration()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getWirelessTcpConfiguration()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getWirelessTcpConfiguration()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    return v3

    .line 81
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_6

    .line 90
    .line 91
    return v3

    .line 92
    :cond_6
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPingConfiguration()Lcom/google/android/projection/proto/Protos$PingConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PingConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPingConfigurationOrBuilder()Lcom/google/android/projection/proto/Protos$PingConfigurationOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->pingConfiguration_:Lcom/google/android/projection/proto/Protos$PingConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PingConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    move-result-object v0

    :cond_0
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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getPingConfiguration()Lcom/google/android/projection/proto/Protos$PingConfiguration;

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    and-int/2addr v0, v1

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getWirelessTcpConfiguration()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v2, v0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    add-int/2addr v0, v2

    .line 45
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 46
    .line 47
    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWirelessTcpConfiguration()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWirelessTcpConfigurationOrBuilder()Lcom/google/android/projection/proto/Protos$WirelessTcpConfigurationOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->wirelessTcpConfiguration_:Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasPingConfiguration()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasWirelessTcpConfiguration()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->hasPingConfiguration()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getPingConfiguration()Lcom/google/android/projection/proto/Protos$PingConfiguration;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$PingConfiguration;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->hasWirelessTcpConfiguration()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x25

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    const/16 v3, 0x35

    .line 50
    .line 51
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getWirelessTcpConfiguration()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/2addr v1, v0

    .line 73
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 74
    .line 75
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$10500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->newBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->newBuilderForType()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->newBuilderForType()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->toBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->toBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getPingConfiguration()Lcom/google/android/projection/proto/Protos$PingConfiguration;

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->bitField0_:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    and-int/2addr v0, v1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getWirelessTcpConfiguration()Lcom/google/android/projection/proto/Protos$WirelessTcpConfiguration;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
