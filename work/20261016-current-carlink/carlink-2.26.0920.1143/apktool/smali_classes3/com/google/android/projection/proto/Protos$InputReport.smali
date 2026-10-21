.class public final Lcom/google/android/projection/proto/Protos$InputReport;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$InputReportOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputReport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_EVENT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputReport;

.field public static final DISP_CHANNEL_ID_FIELD_NUMBER:I = 0x2

.field public static final KEY_EVENT_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$InputReport;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RELATIVE_EVENT_FIELD_NUMBER:I = 0x6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field public static final TOUCHPAD_EVENT_FIELD_NUMBER:I = 0x7

.field public static final TOUCH_EVENT_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

.field private bitField0_:I

.field private dispChannelId_:I

.field private keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

.field private memoizedIsInitialized:B

.field private relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

.field private timestamp_:J

.field private touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

.field private touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/proto/Protos$InputReport;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$InputReport;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputReport;

    new-instance v0, Lcom/google/android/projection/proto/Protos$InputReport$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$InputReport$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputReport;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_13

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    const/16 v4, 0x8

    if-eq v2, v4, :cond_11

    const/16 v5, 0x10

    if-eq v2, v5, :cond_10

    const/16 v6, 0x1a

    const/4 v7, 0x0

    if-eq v2, v6, :cond_d

    const/16 v6, 0x22

    if-eq v2, v6, :cond_a

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x32

    if-eq v2, v4, :cond_4

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$TouchEvent;->toBuilder()Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;

    move-result-object v7

    :cond_2
    sget-object v2, Lcom/google/android/projection/proto/Protos$TouchEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$TouchEvent;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v2}, Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;

    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->toBuilder()Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;

    move-result-object v7

    :cond_5
    sget-object v2, Lcom/google/android/projection/proto/Protos$RelativeEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$RelativeEvent;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    if-eqz v7, :cond_6

    invoke-virtual {v7, v2}, Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RelativeEvent;)Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;

    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$RelativeEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    :cond_6
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->toBuilder()Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;

    move-result-object v7

    :cond_8
    sget-object v2, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    if-eqz v7, :cond_9

    invoke-virtual {v7, v2}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$AbsoluteEvent;)Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;

    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    :cond_9
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$KeyEvent;->toBuilder()Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;

    move-result-object v7

    :cond_b
    sget-object v2, Lcom/google/android/projection/proto/Protos$KeyEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$KeyEvent;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    if-eqz v7, :cond_c

    invoke-virtual {v7, v2}, Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$KeyEvent;)Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;

    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$KeyEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    :cond_c
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    goto/16 :goto_0

    :cond_d
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$TouchEvent;->toBuilder()Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;

    move-result-object v7

    :cond_e
    sget-object v2, Lcom/google/android/projection/proto/Protos$TouchEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$TouchEvent;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    if-eqz v7, :cond_f

    invoke-virtual {v7, v2}, Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;

    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$TouchEvent$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    :cond_f
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    goto/16 :goto_0

    :cond_10
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->dispChannelId_:I

    goto/16 :goto_0

    :cond_11
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->timestamp_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_12
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

    :cond_13
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputReport;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$InputReport;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$119300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$119502(Lcom/google/android/projection/proto/Protos$InputReport;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/projection/proto/Protos$InputReport;->timestamp_:J

    return-wide p1
.end method

.method public static synthetic access$119602(Lcom/google/android/projection/proto/Protos$InputReport;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport;->dispChannelId_:I

    return p1
.end method

.method public static synthetic access$119702(Lcom/google/android/projection/proto/Protos$InputReport;Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$TouchEvent;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    return-object p1
.end method

.method public static synthetic access$119802(Lcom/google/android/projection/proto/Protos$InputReport;Lcom/google/android/projection/proto/Protos$KeyEvent;)Lcom/google/android/projection/proto/Protos$KeyEvent;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    return-object p1
.end method

.method public static synthetic access$119902(Lcom/google/android/projection/proto/Protos$InputReport;Lcom/google/android/projection/proto/Protos$AbsoluteEvent;)Lcom/google/android/projection/proto/Protos$AbsoluteEvent;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    return-object p1
.end method

.method public static synthetic access$120002(Lcom/google/android/projection/proto/Protos$InputReport;Lcom/google/android/projection/proto/Protos$RelativeEvent;)Lcom/google/android/projection/proto/Protos$RelativeEvent;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    return-object p1
.end method

.method public static synthetic access$120102(Lcom/google/android/projection/proto/Protos$InputReport;Lcom/google/android/projection/proto/Protos$TouchEvent;)Lcom/google/android/projection/proto/Protos$TouchEvent;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$InputReport;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    return-object p1
.end method

.method public static synthetic access$120202(Lcom/google/android/projection/proto/Protos$InputReport;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    return p1
.end method

.method public static synthetic access$120300(Lcom/google/android/projection/proto/Protos$InputReport;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputReport;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$118900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputReport;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InputReport;->toBuilder()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$InputReport;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputReport;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InputReport;->toBuilder()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputReport;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputReport;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputReport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputReport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputReport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputReport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputReport;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputReport;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputReport;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputReport;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputReport;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputReport;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputReport;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$InputReport;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$InputReport;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputReport;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTimestamp()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTimestamp()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasDispChannelId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasDispChannelId()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasDispChannelId()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getDispChannelId()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getDispChannelId()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTouchEvent()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTouchEvent()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$TouchEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasKeyEvent()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasKeyEvent()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasKeyEvent()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$KeyEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasAbsoluteEvent()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasAbsoluteEvent()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasAbsoluteEvent()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getAbsoluteEvent()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getAbsoluteEvent()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasRelativeEvent()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasRelativeEvent()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasRelativeEvent()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTouchpadEvent()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTouchpadEvent()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTouchpadEvent()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchpadEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchpadEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$TouchEvent;->equals(Ljava/lang/Object;)Z

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

.method public getAbsoluteEvent()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAbsoluteEventOrBuilder()Lcom/google/android/projection/proto/Protos$AbsoluteEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->absoluteEvent_:Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputReport;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputReport;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputReport;

    move-result-object v0

    return-object v0
.end method

.method public getDispChannelId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->dispChannelId_:I

    return v0
.end method

.method public getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$KeyEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getKeyEventOrBuilder()Lcom/google/android/projection/proto/Protos$KeyEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->keyEvent_:Lcom/google/android/projection/proto/Protos$KeyEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$KeyEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$InputReport;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRelativeEventOrBuilder()Lcom/google/android/projection/proto/Protos$RelativeEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->relativeEvent_:Lcom/google/android/projection/proto/Protos$RelativeEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/projection/proto/Protos$InputReport;->timestamp_:J

    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->dispChannelId_:I

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getAbsoluteEvent()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchpadEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

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

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->timestamp_:J

    return-wide v0
.end method

.method public getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTouchEventOrBuilder()Lcom/google/android/projection/proto/Protos$TouchEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->touchEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTouchpadEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTouchpadEventOrBuilder()Lcom/google/android/projection/proto/Protos$TouchEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->touchpadEvent_:Lcom/google/android/projection/proto/Protos$TouchEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAbsoluteEvent()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDispChannelId()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasKeyEvent()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRelativeEvent()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTouchEvent()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTouchpadEvent()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputReport;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v2, 0x1

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasDispChannelId()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getDispChannelId()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25

    const/4 v2, 0x3

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$TouchEvent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasKeyEvent()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x25

    const/4 v2, 0x4

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$KeyEvent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasAbsoluteEvent()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x25

    const/4 v2, 0x5

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getAbsoluteEvent()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasRelativeEvent()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x25

    const/4 v2, 0x6

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTouchpadEvent()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x25

    const/4 v2, 0x7

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchpadEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$TouchEvent;->hashCode()I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$119000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$InputReport;

    const-class v2, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTimestamp()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->memoizedIsInitialized:B

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$TouchEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->memoizedIsInitialized:B

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$KeyEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->memoizedIsInitialized:B

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasAbsoluteEvent()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getAbsoluteEvent()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->memoizedIsInitialized:B

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasRelativeEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->memoizedIsInitialized:B

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->hasTouchpadEvent()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchpadEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$TouchEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->memoizedIsInitialized:B

    return v2

    :cond_7
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$InputReport;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputReport;->newBuilder()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->newBuilderForType()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputReport;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->newBuilderForType()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$InputReport;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$InputReport;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$InputReport$Builder;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputReport;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputReport;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$InputReport$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputReport;)Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->toBuilder()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->toBuilder()Lcom/google/android/projection/proto/Protos$InputReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/projection/proto/Protos$InputReport;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->dispChannelId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getAbsoluteEvent()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchpadEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
