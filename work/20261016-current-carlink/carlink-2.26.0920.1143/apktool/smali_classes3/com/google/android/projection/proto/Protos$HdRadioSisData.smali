.class public final Lcom/google/android/projection/proto/Protos$HdRadioSisData;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$HdRadioSisDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HdRadioSisData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$HdRadioSisData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_INFO_MESSAGE_FIELD_NUMBER:I = 0x6

.field public static final STATION_ID_FIELD_NUMBER:I = 0x1

.field public static final STATION_LOCATION_FIELD_NUMBER:I = 0x4

.field public static final STATION_MESSAGE_FIELD_NUMBER:I = 0x5

.field public static final STATION_NAME_LONG_FIELD_NUMBER:I = 0x3

.field public static final STATION_NAME_SHORT_FIELD_NUMBER:I = 0x2

.field public static final UNIVERSAL_SHORT_STATION_NAME_SLOGAN_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private volatile serviceInfoMessage_:Ljava/lang/Object;

.field private stationId_:I

.field private stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

.field private volatile stationMessage_:Ljava/lang/Object;

.field private volatile stationNameLong_:Ljava/lang/Object;

.field private volatile stationNameShort_:Ljava/lang/Object;

.field private volatile universalShortStationNameSlogan_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameShort_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameLong_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationMessage_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->serviceInfoMessage_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->universalShortStationNameSlogan_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    const/16 v4, 0x8

    if-eq v2, v4, :cond_9

    const/16 v5, 0x12

    if-eq v2, v5, :cond_8

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_7

    const/16 v5, 0x22

    if-eq v2, v5, :cond_4

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x32

    if-eq v2, v4, :cond_2

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->universalShortStationNameSlogan_:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->serviceInfoMessage_:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationMessage_:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$Location;->toBuilder()Lcom/google/android/projection/proto/Protos$Location$Builder;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/google/android/projection/proto/Protos$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$Location;

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lcom/google/android/projection/proto/Protos$Location$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Location;)Lcom/google/android/projection/proto/Protos$Location$Builder;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$Location$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    :cond_6
    iget v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameLong_:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameShort_:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationId_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_2
    move v1, v3

    goto/16 :goto_0

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$166500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$166702(Lcom/google/android/projection/proto/Protos$HdRadioSisData;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationId_:I

    return p1
.end method

.method public static synthetic access$166800(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameShort_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$166802(Lcom/google/android/projection/proto/Protos$HdRadioSisData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameShort_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$166900(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameLong_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$166902(Lcom/google/android/projection/proto/Protos$HdRadioSisData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameLong_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$167002(Lcom/google/android/projection/proto/Protos$HdRadioSisData;Lcom/google/android/projection/proto/Protos$Location;)Lcom/google/android/projection/proto/Protos$Location;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    return-object p1
.end method

.method public static synthetic access$167100(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationMessage_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$167102(Lcom/google/android/projection/proto/Protos$HdRadioSisData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationMessage_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$167200(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->serviceInfoMessage_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$167202(Lcom/google/android/projection/proto/Protos$HdRadioSisData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->serviceInfoMessage_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$167300(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->universalShortStationNameSlogan_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$167302(Lcom/google/android/projection/proto/Protos$HdRadioSisData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->universalShortStationNameSlogan_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$167402(Lcom/google/android/projection/proto/Protos$HdRadioSisData;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    return p1
.end method

.method public static synthetic access$167500(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$166100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$HdRadioSisData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationId()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationId()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationId()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationId()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationNameShort()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationNameShort()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationNameShort()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationNameShort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationNameLong()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationNameLong()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationNameLong()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationNameLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationNameLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationLocation()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationLocation()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationLocation()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationLocation()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationLocation()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$Location;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationMessage()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationMessage()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasServiceInfoMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasServiceInfoMessage()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasServiceInfoMessage()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getServiceInfoMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getServiceInfoMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasUniversalShortStationNameSlogan()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasUniversalShortStationNameSlogan()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasUniversalShortStationNameSlogan()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getUniversalShortStationNameSlogan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getUniversalShortStationNameSlogan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v3

    :cond_10
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$HdRadioSisData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationId_:I

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameShort_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameLong_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationLocation()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationMessage_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->serviceInfoMessage_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->universalShortStationNameSlogan_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getServiceInfoMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->serviceInfoMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->serviceInfoMessage_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getServiceInfoMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->serviceInfoMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->serviceInfoMessage_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStationId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationId_:I

    return v0
.end method

.method public getStationLocation()Lcom/google/android/projection/proto/Protos$Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Location;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStationLocationOrBuilder()Lcom/google/android/projection/proto/Protos$LocationOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Location;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStationMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationMessage_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getStationMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationMessage_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStationNameLong()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameLong_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameLong_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getStationNameLongBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameLong_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameLong_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStationNameShort()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameShort_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameShort_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getStationNameShortBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameShort_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameShort_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUniversalShortStationNameSlogan()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->universalShortStationNameSlogan_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->universalShortStationNameSlogan_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getUniversalShortStationNameSloganBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->universalShortStationNameSlogan_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->universalShortStationNameSlogan_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasServiceInfoMessage()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStationId()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStationLocation()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStationMessage()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStationNameLong()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStationNameShort()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUniversalShortStationNameSlogan()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationId()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v2, 0x1

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationId()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationNameShort()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationNameShort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationNameLong()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    const/4 v2, 0x3

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationNameLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationLocation()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x25

    const/4 v2, 0x4

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationLocation()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$Location;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x25

    const/4 v2, 0x5

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasServiceInfoMessage()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x25

    const/4 v2, 0x6

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getServiceInfoMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasUniversalShortStationNameSlogan()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x25

    const/4 v2, 0x7

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getUniversalShortStationNameSlogan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$166200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    const-class v2, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationLocation()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationLocation()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$Location;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->memoizedIsInitialized:B

    return v2

    :cond_2
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->newBuilder()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->newBuilderForType()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->newBuilderForType()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->toBuilder()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameShort_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationNameLong_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationLocation()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->stationMessage_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->serviceInfoMessage_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->universalShortStationNameSlogan_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
