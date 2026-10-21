.class public final Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/EnergyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntWithUncertainty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

.field public static final MEAN_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;",
            ">;"
        }
    .end annotation
.end field

.field public static final STANDARD_DEVIATION_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private mean_:I

.field private memoizedIsInitialized:B

.field private standardDeviation_:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    const/16 v4, 0x15

    if-eq v2, v4, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->standardDeviation_:F

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->mean_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 15
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 19
    throw p1

    .line 20
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$2400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2602(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->mean_:I

    return p1
.end method

.method public static synthetic access$2702(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;F)F
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->standardDeviation_:F

    return p1
.end method

.method public static synthetic access$2800(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2900()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$2000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

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
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getMean()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getMean()I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getStandardDeviation()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getStandardDeviation()F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eq v1, v2, :cond_3

    .line 45
    .line 46
    return v3

    .line 47
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    return v3

    .line 58
    :cond_4
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    return-object v0
.end method

.method public getMean()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->mean_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

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
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->mean_:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v1, v0

    .line 18
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->standardDeviation_:F

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    cmpl-float v2, v0, v2

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/2addr v1, v0

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v0, v1

    .line 38
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 39
    .line 40
    return v0
.end method

.method public getStandardDeviation()F
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->standardDeviation_:F

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

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
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    mul-int/lit8 v0, v0, 0x25

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    mul-int/lit8 v0, v0, 0x35

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getMean()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, v0

    .line 27
    mul-int/lit8 v1, v1, 0x25

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x2

    .line 30
    .line 31
    mul-int/lit8 v1, v1, 0x35

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getStandardDeviation()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/2addr v0, v1

    .line 42
    mul-int/lit8 v0, v0, 0x1d

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/2addr v1, v0

    .line 51
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 52
    .line 53
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$2100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->newBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/EnergyModel$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    invoke-direct {p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;-><init>(Lcom/google/android/projection/proto/EnergyModel$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;-><init>(Lcom/google/android/projection/proto/EnergyModel$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->mean_:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->standardDeviation_:F

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    cmpl-float v1, v0, v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
