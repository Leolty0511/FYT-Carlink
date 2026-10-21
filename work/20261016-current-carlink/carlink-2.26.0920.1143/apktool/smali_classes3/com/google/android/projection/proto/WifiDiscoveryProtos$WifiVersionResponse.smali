.class public final Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/WifiDiscoveryProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiVersionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

.field public static final DEVICE_SERIAL_FIELD_NUMBER:I = 0x3

.field public static final MAJOR_VERSION_FIELD_NUMBER:I = 0x1

.field public static final MINOR_VERSION_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE_INFO_FIELD_NUMBER:I = 0x6

.field public static final SELECTED_WIFI_CHANNEL_TYPE_FIELD_NUMBER:I = 0x5

.field public static final VERSION_STATUS_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile deviceSerial_:Ljava/lang/Object;

.field private majorVersion_:I

.field private memoizedIsInitialized:B

.field private minorVersion_:I

.field private phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

.field private selectedWifiChannelType_:I

.field private versionStatus_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->deviceSerial_:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->versionStatus_:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->selectedWifiChannelType_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8

    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;-><init>()V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    const/16 v4, 0x8

    if-eq v2, v4, :cond_a

    const/16 v5, 0x10

    if-eq v2, v5, :cond_9

    const/16 v6, 0x1a

    const/4 v7, 0x4

    if-eq v2, v6, :cond_8

    const/16 v6, 0x20

    if-eq v2, v6, :cond_6

    const/16 v4, 0x28

    if-eq v2, v4, :cond_4

    const/16 v4, 0x32

    if-eq v2, v4, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 15
    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_2

    .line 16
    iget-object v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Common$PhoneInfo;->toBuilder()Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 17
    :goto_1
    sget-object v3, Lcom/google/android/projection/proto/Common$PhoneInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Common$PhoneInfo;

    iput-object v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Common$PhoneInfo;)Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Common$PhoneInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 20
    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 22
    invoke-static {v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;->valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x5

    .line 23
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 24
    :cond_5
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    .line 25
    iput v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->selectedWifiChannelType_:I

    goto :goto_0

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 27
    invoke-static {v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    move-result-object v3

    if-nez v3, :cond_7

    .line 28
    invoke-virtual {v0, v7, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 29
    :cond_7
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    .line 30
    iput v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->versionStatus_:I

    goto :goto_0

    .line 31
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 32
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    or-int/2addr v3, v7

    iput v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    .line 33
    iput-object v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->deviceSerial_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 34
    :cond_9
    iget v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    .line 35
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->minorVersion_:I

    goto/16 :goto_0

    .line 36
    :cond_a
    iget v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    .line 37
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->majorVersion_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_2
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 38
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 39
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 40
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 43
    throw p1

    .line 44
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 45
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$3400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3602(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->majorVersion_:I

    return p1
.end method

.method public static synthetic access$3702(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->minorVersion_:I

    return p1
.end method

.method public static synthetic access$3800(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->deviceSerial_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3802(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->deviceSerial_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3902(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->versionStatus_:I

    return p1
.end method

.method public static synthetic access$4002(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->selectedWifiChannelType_:I

    return p1
.end method

.method public static synthetic access$4102(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;Lcom/google/android/projection/proto/Common$PhoneInfo;)Lcom/google/android/projection/proto/Common$PhoneInfo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    return-object p1
.end method

.method public static synthetic access$4202(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    return p1
.end method

.method public static synthetic access$4300(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->access$3000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

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
    check-cast p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasMajorVersion()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasMajorVersion()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasMajorVersion()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getMajorVersion()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getMajorVersion()I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasMinorVersion()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasMinorVersion()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasMinorVersion()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getMinorVersion()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getMinorVersion()I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasDeviceSerial()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasDeviceSerial()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasDeviceSerial()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getDeviceSerial()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getDeviceSerial()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_7

    .line 103
    .line 104
    return v3

    .line 105
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasVersionStatus()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasVersionStatus()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eq v1, v2, :cond_8

    .line 114
    .line 115
    return v3

    .line 116
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasVersionStatus()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_9

    .line 121
    .line 122
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->versionStatus_:I

    .line 123
    .line 124
    iget v2, p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->versionStatus_:I

    .line 125
    .line 126
    if-eq v1, v2, :cond_9

    .line 127
    .line 128
    return v3

    .line 129
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasSelectedWifiChannelType()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasSelectedWifiChannelType()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eq v1, v2, :cond_a

    .line 138
    .line 139
    return v3

    .line 140
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasSelectedWifiChannelType()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_b

    .line 145
    .line 146
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->selectedWifiChannelType_:I

    .line 147
    .line 148
    iget v2, p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->selectedWifiChannelType_:I

    .line 149
    .line 150
    if-eq v1, v2, :cond_b

    .line 151
    .line 152
    return v3

    .line 153
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasPhoneInfo()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasPhoneInfo()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eq v1, v2, :cond_c

    .line 162
    .line 163
    return v3

    .line 164
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasPhoneInfo()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_d

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Common$PhoneInfo;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_d

    .line 183
    .line 184
    return v3

    .line 185
    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 188
    .line 189
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-nez p1, :cond_e

    .line 194
    .line 195
    return v3

    .line 196
    :cond_e
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getDefaultInstanceForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getDefaultInstanceForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSerial()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->deviceSerial_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->deviceSerial_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getDeviceSerialBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->deviceSerial_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->deviceSerial_:Ljava/lang/Object;

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

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->majorVersion_:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->minorVersion_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Common$PhoneInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$PhoneInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPhoneInfoOrBuilder()Lcom/google/android/projection/proto/Common$PhoneInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->phoneInfo_:Lcom/google/android/projection/proto/Common$PhoneInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Common$PhoneInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$PhoneInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSelectedWifiChannelType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->selectedWifiChannelType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;->valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;->CHANNELS_5GHZ_ONLY:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;

    .line 10
    .line 11
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
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->majorVersion_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->minorVersion_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

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
    iget-object v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->deviceSerial_:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v2, v0

    .line 48
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    .line 49
    .line 50
    and-int/lit8 v0, v0, 0x8

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->versionStatus_:I

    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v2, v0

    .line 61
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

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
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->selectedWifiChannelType_:I

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    add-int/2addr v2, v0

    .line 75
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;

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

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersionStatus()Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->versionStatus_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;->STATUS_UNSOLICITED_MESSAGE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public hasDeviceSerial()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMajorVersion()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMinorVersion()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSelectedWifiChannelType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersionStatus()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasMajorVersion()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getMajorVersion()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasMinorVersion()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getMinorVersion()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasDeviceSerial()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getDeviceSerial()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    add-int/2addr v0, v1

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasVersionStatus()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    const/16 v1, 0x25

    .line 87
    .line 88
    const/4 v2, 0x4

    .line 89
    const/16 v3, 0x35

    .line 90
    .line 91
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->versionStatus_:I

    .line 96
    .line 97
    add-int/2addr v0, v1

    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasSelectedWifiChannelType()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    const/16 v1, 0x25

    .line 105
    .line 106
    const/4 v2, 0x5

    .line 107
    const/16 v3, 0x35

    .line 108
    .line 109
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->selectedWifiChannelType_:I

    .line 114
    .line 115
    add-int/2addr v0, v1

    .line 116
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->hasPhoneInfo()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    const/16 v1, 0x25

    .line 123
    .line 124
    const/4 v2, 0x6

    .line 125
    const/16 v3, 0x35

    .line 126
    .line 127
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Common$PhoneInfo;->hashCode()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    add-int/2addr v0, v1

    .line 140
    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    .line 141
    .line 142
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    add-int/2addr v1, v0

    .line 149
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 150
    .line 151
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->access$3100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->newBuilderForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->newBuilderForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    invoke-direct {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;-><init>(Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;-><init>(Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->majorVersion_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->minorVersion_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

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
    iget-object v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->deviceSerial_:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

    .line 36
    .line 37
    and-int/lit8 v0, v0, 0x8

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->versionStatus_:I

    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

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
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->selectedWifiChannelType_:I

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;

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
