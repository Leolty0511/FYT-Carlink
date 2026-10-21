.class public final Lcom/google/android/projection/proto/Protos$Insets;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Insets"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$Insets$Builder;
    }
.end annotation


# static fields
.field public static final BOTTOM_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Insets;

.field public static final LEFT_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$Insets;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RIGHT_FIELD_NUMBER:I = 0x4

.field public static final TOP_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private bottom_:I

.field private left_:I

.field private memoizedIsInitialized:B

.field private right_:I

.field private top_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$Insets;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$Insets;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$Insets;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Insets;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$Insets$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$Insets$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$Insets;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    const/16 v5, 0x10

    if-eq v2, v5, :cond_3

    const/16 v5, 0x18

    if-eq v2, v5, :cond_2

    const/16 v5, 0x20

    if-eq v2, v5, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 12
    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->right_:I

    goto :goto_0

    .line 14
    :cond_2
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->left_:I

    goto :goto_0

    .line 16
    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->bottom_:I

    goto :goto_0

    .line 18
    :cond_4
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->top_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 21
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 22
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 25
    throw p1

    .line 26
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$Insets;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$Insets;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$Insets;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$22800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$23002(Lcom/google/android/projection/proto/Protos$Insets;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Insets;->top_:I

    return p1
.end method

.method public static synthetic access$23102(Lcom/google/android/projection/proto/Protos$Insets;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Insets;->bottom_:I

    return p1
.end method

.method public static synthetic access$23202(Lcom/google/android/projection/proto/Protos$Insets;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Insets;->left_:I

    return p1
.end method

.method public static synthetic access$23302(Lcom/google/android/projection/proto/Protos$Insets;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Insets;->right_:I

    return p1
.end method

.method public static synthetic access$23402(Lcom/google/android/projection/proto/Protos$Insets;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    return p1
.end method

.method public static synthetic access$23500(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Insets;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$22400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Insets;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$Insets;->toBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Insets;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$Insets;->toBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Insets;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Insets;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Insets;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Insets;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Insets;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Insets;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Insets;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Insets;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Insets;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Insets;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Insets;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$Insets;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$Insets;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$Insets;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$Insets;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->hasTop()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets;->hasTop()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->hasTop()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->getTop()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets;->getTop()I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->hasBottom()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets;->hasBottom()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->hasBottom()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->getBottom()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets;->getBottom()I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->hasLeft()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets;->hasLeft()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->hasLeft()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->getLeft()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets;->getLeft()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eq v1, v2, :cond_7

    .line 99
    .line 100
    return v3

    .line 101
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->hasRight()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets;->hasRight()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eq v1, v2, :cond_8

    .line 110
    .line 111
    return v3

    .line 112
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->hasRight()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_9

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->getRight()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Insets;->getRight()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eq v1, v2, :cond_9

    .line 127
    .line 128
    return v3

    .line 129
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 132
    .line 133
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_a

    .line 138
    .line 139
    return v3

    .line 140
    :cond_a
    return v0
.end method

.method public getBottom()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bottom_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Insets;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->left_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$Insets;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRight()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->right_:I

    return v0
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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->top_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bottom_:I

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v2, v0

    .line 34
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

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
    iget v3, p0, Lcom/google/android/projection/proto/Protos$Insets;->left_:I

    .line 42
    .line 43
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v2, v0

    .line 48
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    .line 49
    .line 50
    and-int/lit8 v0, v0, 0x8

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->right_:I

    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

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

.method public getTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->top_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBottom()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLeft()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRight()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTop()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->hasTop()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->hasBottom()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->getBottom()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->hasLeft()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->getLeft()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/2addr v0, v1

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->hasRight()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->getRight()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    add-int/2addr v0, v1

    .line 96
    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 97
    .line 98
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    add-int/2addr v1, v0

    .line 105
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 106
    .line 107
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$22500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$Insets;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$Insets$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$Insets;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$Insets$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->newBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$Insets$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$Insets$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->newBuilderForType()Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$Insets;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->newBuilderForType()Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$Insets;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$Insets;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$Insets;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$Insets;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$Insets$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$Insets$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$Insets$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->toBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$Insets;->toBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->top_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bottom_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

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
    iget v2, p0, Lcom/google/android/projection/proto/Protos$Insets;->left_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->bitField0_:I

    .line 36
    .line 37
    and-int/lit8 v0, v0, 0x8

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget v0, p0, Lcom/google/android/projection/proto/Protos$Insets;->right_:I

    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

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
