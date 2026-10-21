.class public final Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/WifiDiscoveryProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiInfoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_POINT_TYPE_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_BSSID_FIELD_NUMBER:I = 0x3

.field public static final WIFI_PASSWORD_FIELD_NUMBER:I = 0x2

.field public static final WIFI_SECURITY_MODE_FIELD_NUMBER:I = 0x4

.field public static final WIFI_SSID_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private accessPointType_:I

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private volatile wifiBssid_:Ljava/lang/Object;

.field private volatile wifiPassword_:Ljava/lang/Object;

.field private wifiSecurityMode_:I

.field private volatile wifiSsid_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSsid_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiPassword_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiBssid_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSecurityMode_:I

    .line 11
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->accessPointType_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    .line 12
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;-><init>()V

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/16 v4, 0xa

    if-eq v2, v4, :cond_7

    const/16 v4, 0x12

    if-eq v2, v4, :cond_6

    const/16 v4, 0x1a

    const/4 v5, 0x4

    if-eq v2, v4, :cond_5

    const/16 v4, 0x20

    if-eq v2, v4, :cond_3

    const/16 v4, 0x28

    if-eq v2, v4, :cond_1

    .line 16
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 18
    invoke-static {v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$AccessPointType;->valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$AccessPointType;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x5

    .line 19
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 20
    :cond_2
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    .line 21
    iput v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->accessPointType_:I

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 23
    invoke-static {v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    move-result-object v3

    if-nez v3, :cond_4

    .line 24
    invoke-virtual {v0, v5, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 25
    :cond_4
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    .line 26
    iput v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSecurityMode_:I

    goto :goto_0

    .line 27
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 28
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    .line 29
    iput-object v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiBssid_:Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 31
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    .line 32
    iput-object v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiPassword_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 34
    iget v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    .line 35
    iput-object v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSsid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 36
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 37
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 38
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 41
    throw p1

    .line 42
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$9100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$9300(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSsid_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$9302(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSsid_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$9400(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiPassword_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$9402(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiPassword_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$9500(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiBssid_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$9502(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiBssid_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$9602(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSecurityMode_:I

    return p1
.end method

.method public static synthetic access$9702(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->accessPointType_:I

    return p1
.end method

.method public static synthetic access$9802(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    return p1
.end method

.method public static synthetic access$9900(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->access$8700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

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
    check-cast p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiSsid()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiSsid()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiSsid()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->getWifiSsid()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->getWifiSsid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiPassword()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiPassword()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiPassword()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->getWifiPassword()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->getWifiPassword()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiBssid()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiBssid()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiBssid()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->getWifiBssid()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->getWifiBssid()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiSecurityMode()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiSecurityMode()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiSecurityMode()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_9

    .line 129
    .line 130
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSecurityMode_:I

    .line 131
    .line 132
    iget v2, p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSecurityMode_:I

    .line 133
    .line 134
    if-eq v1, v2, :cond_9

    .line 135
    .line 136
    return v3

    .line 137
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasAccessPointType()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasAccessPointType()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eq v1, v2, :cond_a

    .line 146
    .line 147
    return v3

    .line 148
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasAccessPointType()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_b

    .line 153
    .line 154
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->accessPointType_:I

    .line 155
    .line 156
    iget v2, p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->accessPointType_:I

    .line 157
    .line 158
    if-eq v1, v2, :cond_b

    .line 159
    .line 160
    return v3

    .line 161
    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 162
    .line 163
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 164
    .line 165
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_c

    .line 170
    .line 171
    return v3

    .line 172
    :cond_c
    return v0
.end method

.method public getAccessPointType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$AccessPointType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->accessPointType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$AccessPointType;->valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$AccessPointType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$AccessPointType;->STATIC:Lcom/google/android/projection/proto/WifiDiscoveryProtos$AccessPointType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->getDefaultInstanceForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->getDefaultInstanceForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

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
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSsid_:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiPassword_:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v2, v0

    .line 34
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

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
    iget-object v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiBssid_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    .line 49
    .line 50
    and-int/lit8 v0, v0, 0x8

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSecurityMode_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

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
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->accessPointType_:I

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
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    add-int/2addr v0, v2

    .line 82
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 83
    .line 84
    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWifiBssid()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiBssid_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiBssid_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getWifiBssidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiBssid_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiBssid_:Ljava/lang/Object;

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

.method public getWifiPassword()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiPassword_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiPassword_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getWifiPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiPassword_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiPassword_:Ljava/lang/Object;

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

.method public getWifiSecurityMode()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSecurityMode_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->UNKNOWN_SECURITY_MODE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getWifiSsid()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSsid_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSsid_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getWifiSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSsid_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSsid_:Ljava/lang/Object;

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

.method public hasAccessPointType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWifiBssid()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWifiPassword()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWifiSecurityMode()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWifiSsid()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiSsid()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->getWifiSsid()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiPassword()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->getWifiPassword()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiBssid()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->getWifiBssid()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasWifiSecurityMode()Z

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
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSecurityMode_:I

    .line 104
    .line 105
    add-int/2addr v0, v1

    .line 106
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->hasAccessPointType()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    const/16 v1, 0x25

    .line 113
    .line 114
    const/4 v2, 0x5

    .line 115
    const/16 v3, 0x35

    .line 116
    .line 117
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->accessPointType_:I

    .line 122
    .line 123
    add-int/2addr v0, v1

    .line 124
    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 125
    .line 126
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    add-int/2addr v1, v0

    .line 133
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 134
    .line 135
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->access$8800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->newBuilderForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->newBuilderForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    invoke-direct {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;-><init>(Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;-><init>(Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSsid_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiPassword_:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

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
    iget-object v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiBssid_:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

    .line 36
    .line 37
    and-int/lit8 v0, v0, 0x8

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->wifiSecurityMode_:I

    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->bitField0_:I

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
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->accessPointType_:I

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
