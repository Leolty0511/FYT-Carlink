.class public final Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/EnergyModel$MaxRegenPowerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/EnergyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MaxRegenPower"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;",
            ">;"
        }
    .end annotation
.end field

.field public static final REGENERATION_RATE_AT_ENERGY_LEVEL_FIELD_NUMBER:I = 0x1

.field public static final REGENERATION_RATE_AT_TIME_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private regenerationRateAtEnergyLevel_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;",
            ">;"
        }
    .end annotation
.end field

.field private regenerationRateAtTime_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const/16 v5, 0xa

    if-eq v3, v5, :cond_3

    const/16 v5, 0x12

    if-eq v3, v5, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 15
    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;

    .line 17
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_4

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 19
    :cond_4
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 20
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;

    .line 21
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 22
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 23
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_6

    .line 25
    iget-object p2, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    :cond_6
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_7

    .line 26
    iget-object p2, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    .line 27
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 29
    throw p1

    :cond_8
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_9

    .line 30
    iget-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    :cond_9
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_a

    .line 31
    iget-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    .line 32
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 33
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$7700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$7900(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$7902(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$8000(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$8002(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$8100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$8200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$8300(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$8400()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$7300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

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
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getRegenerationRateAtEnergyLevelList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getRegenerationRateAtEnergyLevelList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getRegenerationRateAtTimeList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getRegenerationRateAtTimeList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    return v2

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
    return v2

    .line 58
    :cond_4
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRegenerationRateAtEnergyLevel(I)Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;

    return-object p1
.end method

.method public getRegenerationRateAtEnergyLevelCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRegenerationRateAtEnergyLevelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    return-object v0
.end method

.method public getRegenerationRateAtEnergyLevelOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevelOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevelOrBuilder;

    return-object p1
.end method

.method public getRegenerationRateAtEnergyLevelOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevelOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    return-object v0
.end method

.method public getRegenerationRateAtTime(I)Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;

    return-object p1
.end method

.method public getRegenerationRateAtTimeCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRegenerationRateAtTimeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    return-object v0
.end method

.method public getRegenerationRateAtTimeOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTimeOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTimeOrBuilder;

    return-object p1
.end method

.method public getRegenerationRateAtTimeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTimeOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

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
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v2, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ge v0, v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 50
    .line 51
    const/4 v3, 0x2

    .line 52
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v2, v1

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    add-int/2addr v0, v2

    .line 67
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 68
    .line 69
    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
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
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getRegenerationRateAtEnergyLevelCount()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_1

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getRegenerationRateAtEnergyLevelList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getRegenerationRateAtTimeCount()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_2

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getRegenerationRateAtTimeList()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/2addr v1, v0

    .line 73
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 74
    .line 75
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$7400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->newBuilder()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/EnergyModel$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    invoke-direct {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;-><init>(Lcom/google/android/projection/proto/EnergyModel$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;-><init>(Lcom/google/android/projection/proto/EnergyModel$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtEnergyLevel_:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ge v0, v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->regenerationRateAtTime_:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
