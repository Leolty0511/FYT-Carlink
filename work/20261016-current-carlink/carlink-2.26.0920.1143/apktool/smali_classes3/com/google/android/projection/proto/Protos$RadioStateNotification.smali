.class public final Lcom/google/android/projection/proto/Protos$RadioStateNotification;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$RadioStateNotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RadioStateNotification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    }
.end annotation


# static fields
.field public static final ACTIVE_RADIO_ID_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStateNotification;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$RadioStateNotification;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRAM_LIST_FIELD_NUMBER:I = 0x5

.field public static final RADIO_MUTED_FIELD_NUMBER:I = 0x2

.field public static final RADIO_SOURCE_ENABLED_FIELD_NUMBER:I = 0x1

.field public static final STATION_INFO_FIELD_NUMBER:I = 0x4

.field public static final STATION_PRESET_LISTS_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private activeRadioId_:I

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private programList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private radioMuted_:Z

.field private radioSourceEnabled_:Z

.field private stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

.field private stationPresetLists_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$StationPresetList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->memoizedIsInitialized:B

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_e

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_b

    const/16 v5, 0x8

    if-eq v3, v5, :cond_a

    const/16 v6, 0x10

    if-eq v3, v6, :cond_9

    const/16 v6, 0x18

    if-eq v3, v6, :cond_8

    const/16 v6, 0x22

    if-eq v3, v6, :cond_5

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_3

    const/16 v5, 0x32

    if-eq v3, v5, :cond_1

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_1
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    sget-object v4, Lcom/google/android/projection/proto/Protos$StationPresetList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Protos$StationPresetList;

    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    :cond_4
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    sget-object v4, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;

    move-result-object v3

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    sget-object v4, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v4}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$RadioStationInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    :cond_7
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->activeRadioId_:I

    goto/16 :goto_0

    :cond_9
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->radioMuted_:Z

    goto/16 :goto_0

    :cond_a
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->radioSourceEnabled_:Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_3
    move v1, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

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

    :goto_4
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_e
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    :cond_f
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    :cond_10
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$138800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$139002(Lcom/google/android/projection/proto/Protos$RadioStateNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->radioSourceEnabled_:Z

    return p1
.end method

.method public static synthetic access$139102(Lcom/google/android/projection/proto/Protos$RadioStateNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->radioMuted_:Z

    return p1
.end method

.method public static synthetic access$139202(Lcom/google/android/projection/proto/Protos$RadioStateNotification;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->activeRadioId_:I

    return p1
.end method

.method public static synthetic access$139302(Lcom/google/android/projection/proto/Protos$RadioStateNotification;Lcom/google/android/projection/proto/Protos$RadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStationInfo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    return-object p1
.end method

.method public static synthetic access$139400(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$139402(Lcom/google/android/projection/proto/Protos$RadioStateNotification;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$139500(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$139502(Lcom/google/android/projection/proto/Protos$RadioStateNotification;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$139602(Lcom/google/android/projection/proto/Protos$RadioStateNotification;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    return p1
.end method

.method public static synthetic access$139700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$139800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$139900(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$138400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$RadioStateNotification;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasRadioSourceEnabled()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasRadioSourceEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasRadioSourceEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getRadioSourceEnabled()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getRadioSourceEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasRadioMuted()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasRadioMuted()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasRadioMuted()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getRadioMuted()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getRadioMuted()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasActiveRadioId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasActiveRadioId()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasActiveRadioId()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getActiveRadioId()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getActiveRadioId()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasStationInfo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasStationInfo()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasStationInfo()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getProgramListList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getProgramListList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationPresetListsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationPresetListsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v3

    :cond_c
    return v0
.end method

.method public getActiveRadioId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->activeRadioId_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioStateNotification;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$RadioStateNotification;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProgramList(I)Lcom/google/android/projection/proto/Protos$RadioStationInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    return-object p1
.end method

.method public getProgramListCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProgramListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    return-object v0
.end method

.method public getProgramListOrBuilder(I)Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;

    return-object p1
.end method

.method public getProgramListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    return-object v0
.end method

.method public getRadioMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->radioMuted_:Z

    return v0
.end method

.method public getRadioSourceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->radioSourceEnabled_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->radioSourceEnabled_:Z

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->radioMuted_:Z

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget v4, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->activeRadioId_:I

    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStationInfoOrBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationInfo_:Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStationPresetLists(I)Lcom/google/android/projection/proto/Protos$StationPresetList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$StationPresetList;

    return-object p1
.end method

.method public getStationPresetListsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStationPresetListsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$StationPresetList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    return-object v0
.end method

.method public getStationPresetListsOrBuilder(I)Lcom/google/android/projection/proto/Protos$StationPresetListOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$StationPresetListOrBuilder;

    return-object p1
.end method

.method public getStationPresetListsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$StationPresetListOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasActiveRadioId()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRadioMuted()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRadioSourceEnabled()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

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

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasRadioSourceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v2, 0x1

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getRadioSourceEnabled()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasRadioMuted()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getRadioMuted()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasActiveRadioId()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    const/4 v2, 0x3

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getActiveRadioId()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasStationInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x25

    const/4 v2, 0x4

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getProgramListCount()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x25

    const/4 v2, 0x5

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getProgramListList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationPresetListsCount()I

    move-result v1

    if-lez v1, :cond_6

    const/16 v1, 0x25

    const/4 v2, 0x6

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationPresetListsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$138500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    const-class v2, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasRadioSourceEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->memoizedIsInitialized:B

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasActiveRadioId()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->memoizedIsInitialized:B

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->hasStationInfo()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->memoizedIsInitialized:B

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->memoizedIsInitialized:B

    return v2

    :cond_5
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getProgramListCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getProgramList(I)Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$RadioStationInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->memoizedIsInitialized:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationPresetListsCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationPresetLists(I)Lcom/google/android/projection/proto/Protos$StationPresetList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$StationPresetList;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->memoizedIsInitialized:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->newBuilder()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->newBuilderForType()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->newBuilderForType()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioStateNotification;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStateNotification;)Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioStateNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->radioSourceEnabled_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->radioMuted_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->activeRadioId_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->programList_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStateNotification;->stationPresetLists_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
