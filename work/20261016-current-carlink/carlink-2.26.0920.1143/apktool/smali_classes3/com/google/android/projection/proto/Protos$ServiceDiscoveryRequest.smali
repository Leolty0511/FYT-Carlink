.class public final Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDiscoveryRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

.field public static final DEVICE_NAME_FIELD_NUMBER:I = 0x5

.field public static final LABEL_TEXT_FIELD_NUMBER:I = 0x4

.field public static final LARGE_ICON_FIELD_NUMBER:I = 0x3

.field public static final MEDIUM_ICON_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE_INFO_FIELD_NUMBER:I = 0x6

.field public static final SMALL_ICON_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile deviceName_:Ljava/lang/Object;

.field private volatile labelText_:Ljava/lang/Object;

.field private largeIcon_:Lcom/google/protobuf/ByteString;

.field private mediumIcon_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

.field private smallIcon_:Lcom/google/protobuf/ByteString;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->memoizedIsInitialized:B

    .line 7
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->smallIcon_:Lcom/google/protobuf/ByteString;

    .line 8
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->mediumIcon_:Lcom/google/protobuf/ByteString;

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->largeIcon_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->labelText_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->deviceName_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5

    .line 12
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;-><init>()V

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0xa

    if-eq v2, v4, :cond_8

    const/16 v4, 0x12

    if-eq v2, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_6

    const/16 v4, 0x22

    if-eq v2, v4, :cond_5

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x32

    if-eq v2, v4, :cond_1

    .line 16
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 17
    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    .line 18
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Common$PhoneInfo;->toBuilder()Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 19
    :goto_1
    sget-object v3, Lcom/google/android/projection/proto/Common$PhoneInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Common$PhoneInfo;

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual {v2, v3}, Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Common$PhoneInfo;)Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Common$PhoneInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 22
    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 24
    iget v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 25
    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->deviceName_:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 27
    iget v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 28
    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->labelText_:Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_6
    iget v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 30
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->largeIcon_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 31
    :cond_7
    iget v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->mediumIcon_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 33
    :cond_8
    iget v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 34
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->smallIcon_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_2
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 35
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 36
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 40
    throw p1

    .line 41
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$3400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3602(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->smallIcon_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static synthetic access$3702(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->mediumIcon_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static synthetic access$3802(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->largeIcon_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static synthetic access$3900(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->labelText_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3902(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->labelText_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4000(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->deviceName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4002(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->deviceName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4102(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;Lcom/google/android/projection/proto/Common$PhoneInfo;)Lcom/google/android/projection/proto/Common$PhoneInfo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    return-object p1
.end method

.method public static synthetic access$4202(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    return p1
.end method

.method public static synthetic access$4300(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$3000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->toBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->toBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasSmallIcon()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasSmallIcon()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasSmallIcon()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getSmallIcon()Lcom/google/protobuf/ByteString;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getSmallIcon()Lcom/google/protobuf/ByteString;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasMediumIcon()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasMediumIcon()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasMediumIcon()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getMediumIcon()Lcom/google/protobuf/ByteString;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getMediumIcon()Lcom/google/protobuf/ByteString;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasLargeIcon()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasLargeIcon()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eq v1, v2, :cond_6

    .line 90
    .line 91
    return v3

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasLargeIcon()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getLargeIcon()Lcom/google/protobuf/ByteString;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getLargeIcon()Lcom/google/protobuf/ByteString;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    return v3

    .line 113
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasLabelText()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasLabelText()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eq v1, v2, :cond_8

    .line 122
    .line 123
    return v3

    .line 124
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasLabelText()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_9

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getLabelText()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getLabelText()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_9

    .line 143
    .line 144
    return v3

    .line 145
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasDeviceName()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasDeviceName()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eq v1, v2, :cond_a

    .line 154
    .line 155
    return v3

    .line 156
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasDeviceName()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDeviceName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDeviceName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_b

    .line 175
    .line 176
    return v3

    .line 177
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasPhoneInfo()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasPhoneInfo()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eq v1, v2, :cond_c

    .line 186
    .line 187
    return v3

    .line 188
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasPhoneInfo()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_d

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Common$PhoneInfo;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-nez v1, :cond_d

    .line 207
    .line 208
    return v3

    .line 209
    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 210
    .line 211
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 212
    .line 213
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_e

    .line 218
    .line 219
    return v3

    .line 220
    :cond_e
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->deviceName_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->deviceName_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getDeviceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->deviceName_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->deviceName_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->labelText_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->labelText_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getLabelTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->labelText_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->labelText_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getLargeIcon()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->largeIcon_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMediumIcon()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->mediumIcon_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Common$PhoneInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$PhoneInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPhoneInfoOrBuilder()Lcom/google/android/projection/proto/Common$PhoneInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Common$PhoneInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$PhoneInfo;

    move-result-object v0

    :cond_0
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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

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
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->smallIcon_:Lcom/google/protobuf/ByteString;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->mediumIcon_:Lcom/google/protobuf/ByteString;

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v2, v0

    .line 34
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

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
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->largeIcon_:Lcom/google/protobuf/ByteString;

    .line 42
    .line 43
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v2, v0

    .line 48
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 49
    .line 50
    and-int/lit8 v0, v0, 0x8

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->labelText_:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v2, v0

    .line 61
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 62
    .line 63
    and-int/lit8 v0, v0, 0x10

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    const/4 v0, 0x5

    .line 68
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->deviceName_:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    add-int/2addr v2, v0

    .line 75
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 76
    .line 77
    and-int/lit8 v0, v0, 0x20

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    const/4 v0, 0x6

    .line 82
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    add-int/2addr v2, v0

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    add-int/2addr v0, v2

    .line 98
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 99
    .line 100
    return v0
.end method

.method public getSmallIcon()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->smallIcon_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDeviceName()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLabelText()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLargeIcon()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMediumIcon()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPhoneInfo()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSmallIcon()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasSmallIcon()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getSmallIcon()Lcom/google/protobuf/ByteString;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasMediumIcon()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getMediumIcon()Lcom/google/protobuf/ByteString;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasLargeIcon()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    const/16 v1, 0x25

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    const/16 v3, 0x35

    .line 74
    .line 75
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getLargeIcon()Lcom/google/protobuf/ByteString;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasLabelText()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    const/16 v1, 0x25

    .line 95
    .line 96
    const/4 v2, 0x4

    .line 97
    const/16 v3, 0x35

    .line 98
    .line 99
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getLabelText()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v0, v1

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasDeviceName()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    const/16 v1, 0x25

    .line 119
    .line 120
    const/4 v2, 0x5

    .line 121
    const/16 v3, 0x35

    .line 122
    .line 123
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getDeviceName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    add-int/2addr v0, v1

    .line 136
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->hasPhoneInfo()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    const/16 v1, 0x25

    .line 143
    .line 144
    const/4 v2, 0x6

    .line 145
    const/16 v3, 0x35

    .line 146
    .line 147
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Common$PhoneInfo;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    add-int/2addr v0, v1

    .line 160
    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    .line 161
    .line 162
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    add-int/2addr v1, v0

    .line 169
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 170
    .line 171
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$3100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->newBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->newBuilderForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->newBuilderForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->toBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->toBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->smallIcon_:Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->mediumIcon_:Lcom/google/protobuf/ByteString;

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

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
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->largeIcon_:Lcom/google/protobuf/ByteString;

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 36
    .line 37
    and-int/lit8 v0, v0, 0x8

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->labelText_:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 47
    .line 48
    and-int/lit8 v0, v0, 0x10

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    const/4 v0, 0x5

    .line 53
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->deviceName_:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->bitField0_:I

    .line 59
    .line 60
    and-int/lit8 v0, v0, 0x20

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    const/4 v0, 0x6

    .line 65
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryRequest;->getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 70
    .line 71
    .line 72
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
