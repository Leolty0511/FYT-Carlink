.class public final Lcom/google/android/projection/proto/Protos$LocationData;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$LocationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$LocationData$Builder;
    }
.end annotation


# static fields
.field public static final ACCURACY_E3_FIELD_NUMBER:I = 0x4

.field public static final ALTITUDE_E2_FIELD_NUMBER:I = 0x5

.field public static final BEARING_E6_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$LocationData;

.field public static final LATITUDE_E7_FIELD_NUMBER:I = 0x2

.field public static final LONGITUDE_E7_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$LocationData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SPEED_E3_FIELD_NUMBER:I = 0x6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private accuracyE3_:I

.field private altitudeE2_:I

.field private bearingE6_:I

.field private bitField0_:I

.field private latitudeE7_:I

.field private longitudeE7_:I

.field private memoizedIsInitialized:B

.field private speedE3_:I

.field private timestamp_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationData;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$LocationData;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$LocationData;

    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationData$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$LocationData$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$LocationData;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/16 v4, 0x8

    if-eq v2, v4, :cond_7

    const/16 v5, 0x10

    if-eq v2, v5, :cond_6

    const/16 v6, 0x18

    if-eq v2, v6, :cond_5

    const/16 v6, 0x20

    if-eq v2, v6, :cond_4

    const/16 v4, 0x28

    if-eq v2, v4, :cond_3

    const/16 v4, 0x30

    if-eq v2, v4, :cond_2

    const/16 v4, 0x38

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bearingE6_:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->speedE3_:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->altitudeE2_:I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->accuracyE3_:I

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->longitudeE7_:I

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->latitudeE7_:I

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->timestamp_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_8
    :goto_1
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

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

    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$LocationData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$LocationData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$71800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$72002(Lcom/google/android/projection/proto/Protos$LocationData;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->timestamp_:J

    return-wide p1
.end method

.method public static synthetic access$72102(Lcom/google/android/projection/proto/Protos$LocationData;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->latitudeE7_:I

    return p1
.end method

.method public static synthetic access$72202(Lcom/google/android/projection/proto/Protos$LocationData;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->longitudeE7_:I

    return p1
.end method

.method public static synthetic access$72302(Lcom/google/android/projection/proto/Protos$LocationData;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->accuracyE3_:I

    return p1
.end method

.method public static synthetic access$72402(Lcom/google/android/projection/proto/Protos$LocationData;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->altitudeE2_:I

    return p1
.end method

.method public static synthetic access$72502(Lcom/google/android/projection/proto/Protos$LocationData;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->speedE3_:I

    return p1
.end method

.method public static synthetic access$72602(Lcom/google/android/projection/proto/Protos$LocationData;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bearingE6_:I

    return p1
.end method

.method public static synthetic access$72702(Lcom/google/android/projection/proto/Protos$LocationData;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    return p1
.end method

.method public static synthetic access$72800(Lcom/google/android/projection/proto/Protos$LocationData;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$LocationData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$71400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$LocationData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$LocationData;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$LocationData;->toBuilder()Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$LocationData;)Lcom/google/android/projection/proto/Protos$LocationData$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$LocationData;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$LocationData;->toBuilder()Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$LocationData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$LocationData;)Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$LocationData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$LocationData;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/Protos$LocationData;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->hasTimestamp()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->getTimestamp()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasLatitudeE7()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->hasLatitudeE7()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasLatitudeE7()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getLatitudeE7()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->getLatitudeE7()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasLongitudeE7()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->hasLongitudeE7()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasLongitudeE7()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getLongitudeE7()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->getLongitudeE7()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasAccuracyE3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->hasAccuracyE3()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasAccuracyE3()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getAccuracyE3()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->getAccuracyE3()I

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasAltitudeE2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->hasAltitudeE2()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasAltitudeE2()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getAltitudeE2()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->getAltitudeE2()I

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasSpeedE3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->hasSpeedE3()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasSpeedE3()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getSpeedE3()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->getSpeedE3()I

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasBearingE6()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->hasBearingE6()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasBearingE6()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getBearingE6()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData;->getBearingE6()I

    move-result v2

    if-eq v1, v2, :cond_f

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

.method public getAccuracyE3()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->accuracyE3_:I

    return v0
.end method

.method public getAltitudeE2()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->altitudeE2_:I

    return v0
.end method

.method public getBearingE6()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bearingE6_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$LocationData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$LocationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$LocationData;

    move-result-object v0

    return-object v0
.end method

.method public getLatitudeE7()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->longitudeE7_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$LocationData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/projection/proto/Protos$LocationData;->timestamp_:J

    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->latitudeE7_:I

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget v3, p0, Lcom/google/android/projection/proto/Protos$LocationData;->longitudeE7_:I

    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->accuracyE3_:I

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->altitudeE2_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->speedE3_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bearingE6_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

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

.method public getSpeedE3()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->speedE3_:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->timestamp_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAccuracyE3()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAltitudeE2()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBearingE6()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLatitudeE7()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLongitudeE7()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpeedE3()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimestamp()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

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

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/projection/proto/Protos$LocationData;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v2, 0x1

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasLatitudeE7()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getLatitudeE7()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasLongitudeE7()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    const/4 v2, 0x3

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getLongitudeE7()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasAccuracyE3()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x25

    const/4 v2, 0x4

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getAccuracyE3()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasAltitudeE2()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x25

    const/4 v2, 0x5

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getAltitudeE2()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasSpeedE3()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x25

    const/4 v2, 0x6

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getSpeedE3()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasBearingE6()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x25

    const/4 v2, 0x7

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->getBearingE6()I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$71500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$LocationData;

    const-class v2, Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasLatitudeE7()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->memoizedIsInitialized:B

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasLongitudeE7()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->memoizedIsInitialized:B

    return v2

    :cond_3
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$LocationData$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$LocationData;->newBuilder()Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$LocationData$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$LocationData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->newBuilderForType()Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LocationData;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->newBuilderForType()Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$LocationData;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$LocationData;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$LocationData$Builder;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$LocationData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$LocationData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$LocationData$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$LocationData$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$LocationData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$LocationData;)Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->toBuilder()Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LocationData;->toBuilder()Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->latitudeE7_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v2, p0, Lcom/google/android/projection/proto/Protos$LocationData;->longitudeE7_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->accuracyE3_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->altitudeE2_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->speedE3_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/projection/proto/Protos$LocationData;->bearingE6_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
