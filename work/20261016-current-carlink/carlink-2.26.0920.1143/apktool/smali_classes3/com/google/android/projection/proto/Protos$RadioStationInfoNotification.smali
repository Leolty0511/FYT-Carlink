.class public final Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$RadioStationInfoNotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RadioStationInfoNotification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_ID_FIELD_NUMBER:I = 0x1

.field public static final STATION_INFO_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private radioId_:I

.field private stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->bitField0_:I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->radioId_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_2
    move v1, v3

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
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$154000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$154202(Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->radioId_:I

    return p1
.end method

.method public static synthetic access$154302(Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;Lcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStationInfo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    return-object p1
.end method

.method public static synthetic access$154402(Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->bitField0_:I

    return p1
.end method

.method public static synthetic access$154500(Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$153600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->hasRadioId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->hasRadioId()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->hasRadioId()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->getRadioId()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->getRadioId()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->hasStationInfo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->hasStationInfo()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->hasStationInfo()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v3

    :cond_6
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRadioId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->radioId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->radioId_:I

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStationInfoOrBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasRadioId()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStationInfo()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->hasRadioId()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v2, 0x1

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->getRadioId()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->hasStationInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$153700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    const-class v2, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->hasRadioId()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->memoizedIsInitialized:B

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->hasStationInfo()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->memoizedIsInitialized:B

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->memoizedIsInitialized:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->newBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->newBuilderForType()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->newBuilderForType()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;)Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->radioId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationInfoNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
