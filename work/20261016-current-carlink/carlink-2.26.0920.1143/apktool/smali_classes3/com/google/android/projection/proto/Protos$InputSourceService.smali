.class public final Lcom/google/android/projection/proto/Protos$InputSourceService;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$InputSourceServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputSourceService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;,
        Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;,
        Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;,
        Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;,
        Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService;

.field public static final DISPLAY_ID_FIELD_NUMBER:I = 0x5

.field public static final FEEDBACK_EVENTS_SUPPORTED_FIELD_NUMBER:I = 0x4

.field public static final KEYCODES_SUPPORTED_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHPAD_FIELD_NUMBER:I = 0x3

.field public static final TOUCHSCREEN_FIELD_NUMBER:I = 0x2

.field private static final feedbackEventsSupported_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/projection/proto/Protos$FeedbackEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private displayId_:I

.field private feedbackEventsSupported_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private keycodesSupportedMemoizedSerializedSize:I

.field private keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

.field private memoizedIsInitialized:B

.field private touchpad_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;",
            ">;"
        }
    .end annotation
.end field

.field private touchscreen_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$2;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService$2;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupportedMemoizedSerializedSize:I

    .line 8
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->memoizedIsInitialized:B

    .line 9
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8

    .line 13
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;-><init>()V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x8

    if-nez v1, :cond_17

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_12

    if-eq v4, v3, :cond_10

    const/16 v6, 0xa

    if-eq v4, v6, :cond_d

    const/16 v6, 0x12

    if-eq v4, v6, :cond_b

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_9

    const/16 v6, 0x20

    const/4 v7, 0x4

    if-eq v4, v6, :cond_6

    const/16 v6, 0x22

    if-eq v4, v6, :cond_2

    const/16 v6, 0x28

    if-eq v4, v6, :cond_1

    .line 17
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 18
    :cond_1
    iget v4, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->bitField0_:I

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->displayId_:I

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 21
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 22
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_5

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 24
    invoke-static {v5}, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->valueOf(I)Lcom/google/android/projection/proto/Protos$FeedbackEvent;

    move-result-object v6

    if-nez v6, :cond_3

    .line 25
    invoke-virtual {v0, v7, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_1

    :cond_3
    and-int/lit8 v6, v2, 0x8

    if-nez v6, :cond_4

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 27
    :cond_4
    iget-object v6, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 28
    :cond_5
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 29
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 30
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->valueOf(I)Lcom/google/android/projection/proto/Protos$FeedbackEvent;

    move-result-object v5

    if-nez v5, :cond_7

    .line 31
    invoke-virtual {v0, v7, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_7
    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_8

    .line 32
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 33
    :cond_8
    iget-object v5, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_a

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 35
    :cond_a
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    sget-object v5, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    .line 36
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    .line 37
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_c

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 39
    :cond_c
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    sget-object v5, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->PARSER:Lcom/google/protobuf/Parser;

    .line 40
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    .line 41
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 42
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 43
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_e

    .line 44
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_e

    .line 45
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x1

    .line 46
    :cond_e
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_f

    .line 47
    iget-object v5, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 48
    :cond_f
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :cond_10
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_11

    .line 49
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x1

    .line 50
    :cond_11
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_12
    :goto_3
    move v1, v5

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 51
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 52
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 53
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_13

    .line 54
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    :cond_13
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_14

    .line 55
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_15

    .line 56
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    :cond_15
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_16

    .line 57
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    .line 58
    :cond_16
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 59
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 60
    throw p1

    :cond_17
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_18

    .line 61
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    :cond_18
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_19

    .line 62
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    :cond_19
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_1a

    .line 63
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_1b

    .line 64
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    .line 65
    :cond_1b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 66
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputSourceService;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupportedMemoizedSerializedSize:I

    .line 5
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$30500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$30600()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$30800(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    return-object p0
.end method

.method public static synthetic access$30802(Lcom/google/android/projection/proto/Protos$InputSourceService;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    return-object p1
.end method

.method public static synthetic access$30900(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$30902(Lcom/google/android/projection/proto/Protos$InputSourceService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$31000(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$31002(Lcom/google/android/projection/proto/Protos$InputSourceService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$31100(Lcom/google/android/projection/proto/Protos$InputSourceService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$31102(Lcom/google/android/projection/proto/Protos$InputSourceService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$31202(Lcom/google/android/projection/proto/Protos$InputSourceService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->displayId_:I

    return p1
.end method

.method public static synthetic access$31302(Lcom/google/android/projection/proto/Protos$InputSourceService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->bitField0_:I

    return p1
.end method

.method public static synthetic access$31400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$31500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$31600(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$31700()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$31800(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$31900()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$32000()Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$27100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$InputSourceService;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getKeycodesSupportedList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getKeycodesSupportedList()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getTouchscreenList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getTouchscreenList()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getTouchpadList()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getTouchpadList()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    return v2

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    .line 63
    .line 64
    iget-object v3, p1, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_5

    .line 71
    .line 72
    return v2

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->hasDisplayId()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->hasDisplayId()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eq v1, v3, :cond_6

    .line 82
    .line 83
    return v2

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->hasDisplayId()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDisplayId()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDisplayId()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eq v1, v3, :cond_7

    .line 99
    .line 100
    return v2

    .line 101
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 104
    .line 105
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_8

    .line 110
    .line 111
    return v2

    .line 112
    :cond_8
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputSourceService;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputSourceService;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->displayId_:I

    return v0
.end method

.method public getFeedbackEventsSupported(I)Lcom/google/android/projection/proto/Protos$FeedbackEvent;
    .locals 2

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$FeedbackEvent;

    return-object p1
.end method

.method public getFeedbackEventsSupportedCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFeedbackEventsSupportedList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$FeedbackEvent;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    sget-object v2, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getKeycodesSupported(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getKeycodesSupportedCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getKeycodesSupportedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->PARSER:Lcom/google/protobuf/Parser;

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
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

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
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 19
    .line 20
    invoke-interface {v3, v1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    add-int/2addr v2, v3

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    add-int v1, v0, v2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getKeycodesSupportedList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/2addr v1, v3

    .line 51
    :cond_2
    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupportedMemoizedSerializedSize:I

    .line 52
    .line 53
    move v2, v0

    .line 54
    :goto_1
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-ge v2, v3, :cond_3

    .line 61
    .line 62
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 69
    .line 70
    const/4 v4, 0x2

    .line 71
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    add-int/2addr v1, v3

    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move v2, v0

    .line 80
    :goto_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-ge v2, v3, :cond_4

    .line 87
    .line 88
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 95
    .line 96
    const/4 v4, 0x3

    .line 97
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    add-int/2addr v1, v3

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    move v2, v0

    .line 106
    :goto_3
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-ge v0, v3, :cond_5

    .line 113
    .line 114
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/lang/Integer;

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    add-int/2addr v2, v3

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    add-int/2addr v1, v2

    .line 135
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    mul-int/lit8 v0, v0, 0x1

    .line 142
    .line 143
    add-int/2addr v0, v1

    .line 144
    iget v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->bitField0_:I

    .line 145
    .line 146
    and-int/lit8 v1, v1, 0x1

    .line 147
    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    const/4 v1, 0x5

    .line 151
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->displayId_:I

    .line 152
    .line 153
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    add-int/2addr v0, v1

    .line 158
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    add-int/2addr v1, v0

    .line 165
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 166
    .line 167
    return v1
.end method

.method public getTouchpad(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p1
.end method

.method public getTouchpadCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTouchpadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    return-object v0
.end method

.method public getTouchpadOrBuilder(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;

    return-object p1
.end method

.method public getTouchpadOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    return-object v0
.end method

.method public getTouchscreen(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    return-object p1
.end method

.method public getTouchscreenCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTouchscreenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    return-object v0
.end method

.method public getTouchscreenOrBuilder(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;

    return-object p1
.end method

.method public getTouchscreenOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDisplayId()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getKeycodesSupportedCount()I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getKeycodesSupportedList()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getTouchscreenCount()I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getTouchscreenList()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getTouchpadCount()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-lez v1, :cond_3

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getTouchpadList()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getFeedbackEventsSupportedCount()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-lez v1, :cond_4

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
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    add-int/2addr v0, v1

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->hasDisplayId()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    const/16 v1, 0x25

    .line 117
    .line 118
    const/4 v2, 0x5

    .line 119
    const/16 v3, 0x35

    .line 120
    .line 121
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getDisplayId()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    add-int/2addr v0, v1

    .line 130
    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 131
    .line 132
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    add-int/2addr v1, v0

    .line 139
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 140
    .line 141
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$27200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$InputSourceService;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

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
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->memoizedIsInitialized:B

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
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    move v0, v2

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getTouchscreenCount()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v0, v3, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getTouchscreen(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;->isInitialized()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->memoizedIsInitialized:B

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    move v0, v2

    .line 35
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getTouchpadCount()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ge v0, v3, :cond_5

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getTouchpad(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->isInitialized()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_4

    .line 50
    .line 51
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->memoizedIsInitialized:B

    .line 52
    .line 53
    return v2

    .line 54
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->memoizedIsInitialized:B

    .line 58
    .line 59
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService;->newBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->newBuilderForType()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->newBuilderForType()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$InputSourceService;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputSourceService;)Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService;->getKeycodesSupportedList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupportedMemoizedSerializedSize:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    move v1, v0

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge v1, v2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->keycodesSupported_:Lcom/google/protobuf/Internal$IntList;

    .line 35
    .line 36
    invoke-interface {v2, v1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v1, v0

    .line 47
    :goto_1
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ge v1, v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchscreen_:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 62
    .line 63
    const/4 v3, 0x2

    .line 64
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v1, v0

    .line 71
    :goto_2
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-ge v1, v2, :cond_3

    .line 78
    .line 79
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->touchpad_:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 86
    .line 87
    const/4 v3, 0x3

    .line 88
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-ge v0, v1, :cond_4

    .line 101
    .line 102
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->feedbackEventsSupported_:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/4 v2, 0x4

    .line 115
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->bitField0_:I

    .line 122
    .line 123
    and-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    const/4 v0, 0x5

    .line 128
    iget v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService;->displayId_:I

    .line 129
    .line 130
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 131
    .line 132
    .line 133
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method
