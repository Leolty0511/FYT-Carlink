.class public final Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$InputSourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchScreen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x2

.field public static final IS_SECONDARY_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field public static final WIDTH_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private height_:I

.field private isSecondary_:Z

.field private memoizedIsInitialized:B

.field private type_:I

.field private width_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->memoizedIsInitialized:B

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->type_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;-><init>()V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    const/16 v5, 0x10

    if-eq v2, v5, :cond_4

    const/16 v5, 0x18

    if-eq v2, v5, :cond_2

    const/16 v5, 0x20

    if-eq v2, v5, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 13
    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    .line 14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->isSecondary_:Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 16
    invoke-static {v2}, Lcom/google/android/projection/proto/Protos$TouchScreenType;->valueOf(I)Lcom/google/android/projection/proto/Protos$TouchScreenType;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    .line 17
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 18
    :cond_3
    iget v3, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    .line 19
    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->type_:I

    goto :goto_0

    .line 20
    :cond_4
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->height_:I

    goto :goto_0

    .line 22
    :cond_5
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->width_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
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
    :cond_7
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
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$27700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$27902(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->width_:I

    return p1
.end method

.method public static synthetic access$28002(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->height_:I

    return p1
.end method

.method public static synthetic access$28102(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->type_:I

    return p1
.end method

.method public static synthetic access$28202(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->isSecondary_:Z

    return p1
.end method

.method public static synthetic access$28302(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    return p1
.end method

.method public static synthetic access$28400(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$27300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasWidth()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasWidth()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasWidth()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getWidth()I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasHeight()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasHeight()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasHeight()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eq v1, v2, :cond_5

    .line 71
    .line 72
    return v3

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasType()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasType()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eq v1, v2, :cond_6

    .line 82
    .line 83
    return v3

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasType()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    iget v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->type_:I

    .line 91
    .line 92
    iget v2, p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->type_:I

    .line 93
    .line 94
    if-eq v1, v2, :cond_7

    .line 95
    .line 96
    return v3

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasIsSecondary()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasIsSecondary()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eq v1, v2, :cond_8

    .line 106
    .line 107
    return v3

    .line 108
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasIsSecondary()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_9

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getIsSecondary()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getIsSecondary()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eq v1, v2, :cond_9

    .line 123
    .line 124
    return v3

    .line 125
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 126
    .line 127
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 128
    .line 129
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_a

    .line 134
    .line 135
    return v3

    .line 136
    :cond_a
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->height_:I

    return v0
.end method

.method public getIsSecondary()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->isSecondary_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->width_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->height_:I

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v2, v0

    .line 34
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    and-int/2addr v0, v1

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    iget v3, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->type_:I

    .line 42
    .line 43
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v2, v0

    .line 48
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    .line 49
    .line 50
    and-int/lit8 v0, v0, 0x8

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->isSecondary_:Z

    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v2, v0

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/2addr v0, v2

    .line 68
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 69
    .line 70
    return v0
.end method

.method public getType()Lcom/google/android/projection/proto/Protos$TouchScreenType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$TouchScreenType;->valueOf(I)Lcom/google/android/projection/proto/Protos$TouchScreenType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$TouchScreenType;->CAPACITIVE:Lcom/google/android/projection/proto/Protos$TouchScreenType;

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

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIsSecondary()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWidth()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasWidth()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasHeight()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasType()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    const/16 v1, 0x25

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    const/16 v3, 0x35

    .line 66
    .line 67
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->type_:I

    .line 72
    .line 73
    add-int/2addr v0, v1

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasIsSecondary()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    const/16 v1, 0x25

    .line 81
    .line 82
    const/4 v2, 0x4

    .line 83
    const/16 v3, 0x35

    .line 84
    .line 85
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->getIsSecondary()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    add-int/2addr v0, v1

    .line 98
    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 99
    .line 100
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    add-int/2addr v1, v0

    .line 107
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 108
    .line 109
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$27400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->memoizedIsInitialized:B

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasWidth()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->memoizedIsInitialized:B

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->hasHeight()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->memoizedIsInitialized:B

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->memoizedIsInitialized:B

    .line 30
    .line 31
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->newBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->newBuilderForType()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->newBuilderForType()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->width_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->height_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    and-int/2addr v0, v1

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->type_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->bitField0_:I

    .line 36
    .line 37
    and-int/lit8 v0, v0, 0x8

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->isSecondary_:Z

    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
