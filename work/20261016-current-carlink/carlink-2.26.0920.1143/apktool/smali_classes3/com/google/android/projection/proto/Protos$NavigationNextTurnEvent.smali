.class public final Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$NavigationNextTurnEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NavigationNextTurnEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;,
        Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;,
        Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

.field public static final EVENT_FIELD_NUMBER:I = 0x3

.field public static final IMAGE_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROAD_FIELD_NUMBER:I = 0x1

.field public static final TURN_ANGLE_FIELD_NUMBER:I = 0x6

.field public static final TURN_NUMBER_FIELD_NUMBER:I = 0x5

.field public static final TURN_SIDE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private event_:I

.field private image_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private volatile road_:Ljava/lang/Object;

.field private turnAngle_:I

.field private turnNumber_:I

.field private turnSide_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->road_:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnSide_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->event_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->image_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0xa

    if-eq v2, v4, :cond_8

    const/16 v4, 0x10

    if-eq v2, v4, :cond_6

    const/16 v5, 0x18

    if-eq v2, v5, :cond_4

    const/16 v5, 0x22

    if-eq v2, v5, :cond_3

    const/16 v5, 0x28

    if-eq v2, v5, :cond_2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnAngle_:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnNumber_:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->image_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    iput v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->event_:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_7

    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_7
    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    iput v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnSide_:I

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v4, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->road_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
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

    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$188300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$188500(Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->road_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$188502(Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->road_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$188602(Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnSide_:I

    return p1
.end method

.method public static synthetic access$188702(Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->event_:I

    return p1
.end method

.method public static synthetic access$188802(Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->image_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static synthetic access$188902(Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnNumber_:I

    return p1
.end method

.method public static synthetic access$189002(Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnAngle_:I

    return p1
.end method

.method public static synthetic access$189102(Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    return p1
.end method

.method public static synthetic access$189200(Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$187900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasRoad()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasRoad()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasRoad()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getRoad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getRoad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasTurnSide()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasTurnSide()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasTurnSide()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnSide_:I

    iget v2, p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnSide_:I

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasEvent()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasEvent()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasEvent()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->event_:I

    iget v2, p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->event_:I

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasImage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasImage()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasTurnNumber()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasTurnNumber()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasTurnNumber()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getTurnNumber()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getTurnNumber()I

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasTurnAngle()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasTurnAngle()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasTurnAngle()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getTurnAngle()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getTurnAngle()I

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v3

    :cond_e
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    move-result-object v0

    return-object v0
.end method

.method public getEvent()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->event_:I

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->UNKNOWN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    :cond_0
    return-object v0
.end method

.method public getImage()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->image_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRoad()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->road_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->road_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getRoadBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->road_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->road_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->road_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnSide_:I

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->event_:I

    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->image_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnNumber_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnAngle_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTurnAngle()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnAngle_:I

    return v0
.end method

.method public getTurnNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnNumber_:I

    return v0
.end method

.method public getTurnSide()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnSide_:I

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->LEFT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasEvent()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasImage()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRoad()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTurnAngle()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTurnNumber()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTurnSide()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasRoad()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v2, 0x1

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getRoad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasTurnSide()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnSide_:I

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    const/4 v2, 0x3

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->event_:I

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x25

    const/4 v2, 0x4

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasTurnNumber()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x25

    const/4 v2, 0x5

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getTurnNumber()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasTurnAngle()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x25

    const/4 v2, 0x6

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->getTurnAngle()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$188000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    const-class v2, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->hasRoad()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->memoizedIsInitialized:B

    return v2

    :cond_2
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->newBuilder()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->newBuilderForType()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->newBuilderForType()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->toBuilder()Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->road_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnSide_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v2, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->event_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->image_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnNumber_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent;->turnAngle_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
