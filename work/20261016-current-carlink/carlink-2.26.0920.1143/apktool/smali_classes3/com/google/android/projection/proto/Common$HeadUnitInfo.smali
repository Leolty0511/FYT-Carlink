.class public final Lcom/google/android/projection/proto/Common$HeadUnitInfo;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeadUnitInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

.field public static final HEAD_UNIT_MAKE_FIELD_NUMBER:I = 0x5

.field public static final HEAD_UNIT_MODEL_FIELD_NUMBER:I = 0x6

.field public static final HEAD_UNIT_SOFTWARE_BUILD_FIELD_NUMBER:I = 0x7

.field public static final HEAD_UNIT_SOFTWARE_VERSION_FIELD_NUMBER:I = 0x8

.field public static final MAKE_FIELD_NUMBER:I = 0x1

.field public static final MODEL_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VEHICLE_ID_FIELD_NUMBER:I = 0x4

.field public static final YEAR_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile headUnitMake_:Ljava/lang/Object;

.field private volatile headUnitModel_:Ljava/lang/Object;

.field private volatile headUnitSoftwareBuild_:Ljava/lang/Object;

.field private volatile headUnitSoftwareVersion_:Ljava/lang/Object;

.field private volatile make_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile model_:Ljava/lang/Object;

.field private volatile vehicleId_:Ljava/lang/Object;

.field private volatile year_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->make_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->model_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->year_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->vehicleId_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitMake_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitModel_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareVersion_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5

    .line 15
    invoke-direct {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;-><init>()V

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 18
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

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_2

    const/16 v4, 0x42

    if-eq v2, v4, :cond_1

    .line 19
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 21
    iget v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 22
    iput-object v2, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 24
    iget v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 25
    iput-object v2, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareBuild_:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 27
    iget v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 28
    iput-object v2, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitModel_:Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 30
    iget v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 31
    iput-object v2, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitMake_:Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 33
    iget v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 34
    iput-object v2, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->vehicleId_:Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 36
    iget v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 37
    iput-object v2, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->year_:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 39
    iget v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 40
    iput-object v2, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->model_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 41
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 42
    iget v4, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 43
    iput-object v2, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->make_:Ljava/lang/Object;
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

    .line 44
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 45
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 46
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 48
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 49
    throw p1

    .line 50
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 51
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Common$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Common$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1900(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->make_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1902(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->make_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2000(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->model_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2002(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2100(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->year_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->year_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2200(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->vehicleId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2202(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->vehicleId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2300(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitMake_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2302(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitMake_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2400(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitModel_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2402(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitModel_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2500(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareBuild_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2502(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareBuild_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2600(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2602(Lcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2702(Lcom/google/android/projection/proto/Common$HeadUnitInfo;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    return p1
.end method

.method public static synthetic access$2800(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Common;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->toBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->toBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

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
    check-cast p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasMake()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasMake()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasMake()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getMake()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getMake()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasModel()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasModel()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasModel()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getModel()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getModel()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasYear()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasYear()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasYear()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getYear()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getYear()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasVehicleId()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasVehicleId()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasVehicleId()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_9

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getVehicleId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getVehicleId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitMake()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitMake()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitMake()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitMake()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitMake()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitModel()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitModel()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitModel()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_d

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitModel()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitModel()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitSoftwareBuild()Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitSoftwareBuild()Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-eq v1, v2, :cond_e

    .line 218
    .line 219
    return v3

    .line 220
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitSoftwareBuild()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_f

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitSoftwareBuild()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitSoftwareBuild()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-nez v1, :cond_f

    .line 239
    .line 240
    return v3

    .line 241
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitSoftwareVersion()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitSoftwareVersion()Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eq v1, v2, :cond_10

    .line 250
    .line 251
    return v3

    .line 252
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitSoftwareVersion()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_11

    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitSoftwareVersion()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitSoftwareVersion()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_11

    .line 271
    .line 272
    return v3

    .line 273
    :cond_11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 274
    .line 275
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 276
    .line 277
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-nez p1, :cond_12

    .line 282
    .line 283
    return v3

    .line 284
    :cond_12
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHeadUnitMake()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitMake_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitMake_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getHeadUnitMakeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitMake_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitMake_:Ljava/lang/Object;

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

.method public getHeadUnitModel()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitModel_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitModel_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getHeadUnitModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitModel_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitModel_:Ljava/lang/Object;

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

.method public getHeadUnitSoftwareBuild()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareBuild_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getHeadUnitSoftwareBuildBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareBuild_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareBuild_:Ljava/lang/Object;

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

.method public getHeadUnitSoftwareVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareVersion_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getHeadUnitSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareVersion_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareVersion_:Ljava/lang/Object;

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

.method public getMake()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->make_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->make_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getMakeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->make_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->make_:Ljava/lang/Object;

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

.method public getModel()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->model_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->model_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->model_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->model_:Ljava/lang/Object;

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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

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
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->make_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->model_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

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
    iget-object v3, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->year_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 49
    .line 50
    const/16 v3, 0x8

    .line 51
    .line 52
    and-int/2addr v0, v3

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->vehicleId_:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/2addr v2, v0

    .line 62
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 63
    .line 64
    and-int/lit8 v0, v0, 0x10

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    const/4 v0, 0x5

    .line 69
    iget-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitMake_:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr v2, v0

    .line 76
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 77
    .line 78
    and-int/lit8 v0, v0, 0x20

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    const/4 v0, 0x6

    .line 83
    iget-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitModel_:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    add-int/2addr v2, v0

    .line 90
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 91
    .line 92
    and-int/lit8 v0, v0, 0x40

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    const/4 v0, 0x7

    .line 97
    iget-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 98
    .line 99
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/2addr v2, v0

    .line 104
    :cond_7
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 105
    .line 106
    and-int/lit16 v0, v0, 0x80

    .line 107
    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-static {v3, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    add-int/2addr v2, v0

    .line 117
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    add-int/2addr v0, v2

    .line 124
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 125
    .line 126
    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->vehicleId_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->vehicleId_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getVehicleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->vehicleId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->vehicleId_:Ljava/lang/Object;

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

.method public getYear()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->year_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->year_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getYearBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->year_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->year_:Ljava/lang/Object;

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

.method public hasHeadUnitMake()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitModel()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitSoftwareBuild()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitSoftwareVersion()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMake()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasModel()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVehicleId()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasYear()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasMake()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getMake()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasModel()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getModel()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasYear()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getYear()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasVehicleId()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getVehicleId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitMake()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitMake()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitModel()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitModel()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    add-int/2addr v0, v1

    .line 160
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitSoftwareBuild()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_7

    .line 165
    .line 166
    const/16 v1, 0x25

    .line 167
    .line 168
    const/4 v2, 0x7

    .line 169
    const/16 v3, 0x35

    .line 170
    .line 171
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitSoftwareBuild()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    add-int/2addr v0, v1

    .line 184
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hasHeadUnitSoftwareVersion()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_8

    .line 189
    .line 190
    const/16 v1, 0x25

    .line 191
    .line 192
    const/16 v2, 0x8

    .line 193
    .line 194
    const/16 v3, 0x35

    .line 195
    .line 196
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getHeadUnitSoftwareVersion()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    add-int/2addr v0, v1

    .line 209
    :cond_8
    mul-int/lit8 v0, v0, 0x1d

    .line 210
    .line 211
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    add-int/2addr v1, v0

    .line 218
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 219
    .line 220
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Common;->access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->newBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Common$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->newBuilderForType()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->newBuilderForType()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;-><init>(Lcom/google/android/projection/proto/Common$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;-><init>(Lcom/google/android/projection/proto/Common$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->toBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->toBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->make_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->model_:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

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
    iget-object v2, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->year_:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 36
    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    and-int/2addr v0, v2

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->vehicleId_:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 48
    .line 49
    and-int/lit8 v0, v0, 0x10

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const/4 v0, 0x5

    .line 54
    iget-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitMake_:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 60
    .line 61
    and-int/lit8 v0, v0, 0x20

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    const/4 v0, 0x6

    .line 66
    iget-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitModel_:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 72
    .line 73
    and-int/lit8 v0, v0, 0x40

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    const/4 v0, 0x7

    .line 78
    iget-object v1, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->bitField0_:I

    .line 84
    .line 85
    and-int/lit16 v0, v0, 0x80

    .line 86
    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    iget-object v0, p0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-static {p1, v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
