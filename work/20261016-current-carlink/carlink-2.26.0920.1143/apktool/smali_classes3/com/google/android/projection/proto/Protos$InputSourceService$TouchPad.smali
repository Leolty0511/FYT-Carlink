.class public final Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$InputSourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchPad"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHYSICAL_HEIGHT_FIELD_NUMBER:I = 0x5

.field public static final PHYSICAL_WIDTH_FIELD_NUMBER:I = 0x4

.field public static final SENSITIVITY_FIELD_NUMBER:I = 0x8

.field public static final TAP_AS_SELECT_FIELD_NUMBER:I = 0x7

.field public static final UI_ABSOLUTE_FIELD_NUMBER:I = 0x6

.field public static final UI_NAVIGATION_FIELD_NUMBER:I = 0x3

.field public static final WIDTH_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private height_:I

.field private memoizedIsInitialized:B

.field private physicalHeight_:I

.field private physicalWidth_:I

.field private sensitivity_:I

.field private tapAsSelect_:Z

.field private uiAbsolute_:Z

.field private uiNavigation_:Z

.field private width_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7

    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0x8

    if-eq v2, v4, :cond_8

    const/16 v5, 0x10

    if-eq v2, v5, :cond_7

    const/16 v6, 0x18

    if-eq v2, v6, :cond_6

    const/16 v6, 0x20

    if-eq v2, v6, :cond_5

    const/16 v4, 0x28

    if-eq v2, v4, :cond_4

    const/16 v4, 0x30

    if-eq v2, v4, :cond_3

    const/16 v4, 0x38

    const/16 v5, 0x40

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 12
    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->sensitivity_:I

    goto :goto_0

    .line 14
    :cond_2
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->tapAsSelect_:Z

    goto :goto_0

    .line 16
    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->uiAbsolute_:Z

    goto :goto_0

    .line 18
    :cond_4
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->physicalHeight_:I

    goto :goto_0

    .line 20
    :cond_5
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->physicalWidth_:I

    goto :goto_0

    .line 22
    :cond_6
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->uiNavigation_:Z

    goto :goto_0

    .line 24
    :cond_7
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 25
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->height_:I

    goto/16 :goto_0

    .line 26
    :cond_8
    iget v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 27
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->width_:I
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

    .line 28
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 29
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 30
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 33
    throw p1

    .line 34
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$29000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$29202(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->width_:I

    return p1
.end method

.method public static synthetic access$29302(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->height_:I

    return p1
.end method

.method public static synthetic access$29402(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->uiNavigation_:Z

    return p1
.end method

.method public static synthetic access$29502(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->physicalWidth_:I

    return p1
.end method

.method public static synthetic access$29602(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->physicalHeight_:I

    return p1
.end method

.method public static synthetic access$29702(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->uiAbsolute_:Z

    return p1
.end method

.method public static synthetic access$29802(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->tapAsSelect_:Z

    return p1
.end method

.method public static synthetic access$29902(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->sensitivity_:I

    return p1
.end method

.method public static synthetic access$30002(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    return p1
.end method

.method public static synthetic access$30100(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$28600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasWidth()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasWidth()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasWidth()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eq v1, v2, :cond_3

    .line 43
    .line 44
    return v3

    .line 45
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasHeight()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasHeight()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eq v1, v2, :cond_4

    .line 54
    .line 55
    return v3

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasHeight()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eq v1, v2, :cond_5

    .line 71
    .line 72
    return v3

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasUiNavigation()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasUiNavigation()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eq v1, v2, :cond_6

    .line 82
    .line 83
    return v3

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasUiNavigation()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getUiNavigation()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getUiNavigation()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eq v1, v2, :cond_7

    .line 99
    .line 100
    return v3

    .line 101
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasPhysicalWidth()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasPhysicalWidth()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eq v1, v2, :cond_8

    .line 110
    .line 111
    return v3

    .line 112
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasPhysicalWidth()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_9

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getPhysicalWidth()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getPhysicalWidth()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eq v1, v2, :cond_9

    .line 127
    .line 128
    return v3

    .line 129
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasPhysicalHeight()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasPhysicalHeight()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eq v1, v2, :cond_a

    .line 138
    .line 139
    return v3

    .line 140
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasPhysicalHeight()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_b

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getPhysicalHeight()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getPhysicalHeight()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eq v1, v2, :cond_b

    .line 155
    .line 156
    return v3

    .line 157
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasUiAbsolute()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasUiAbsolute()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eq v1, v2, :cond_c

    .line 166
    .line 167
    return v3

    .line 168
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasUiAbsolute()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_d

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getUiAbsolute()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getUiAbsolute()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eq v1, v2, :cond_d

    .line 183
    .line 184
    return v3

    .line 185
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasTapAsSelect()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasTapAsSelect()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eq v1, v2, :cond_e

    .line 194
    .line 195
    return v3

    .line 196
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasTapAsSelect()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_f

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getTapAsSelect()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getTapAsSelect()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eq v1, v2, :cond_f

    .line 211
    .line 212
    return v3

    .line 213
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasSensitivity()Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasSensitivity()Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eq v1, v2, :cond_10

    .line 222
    .line 223
    return v3

    .line 224
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasSensitivity()Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_11

    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getSensitivity()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getSensitivity()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eq v1, v2, :cond_11

    .line 239
    .line 240
    return v3

    .line 241
    :cond_11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 242
    .line 243
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 244
    .line 245
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-nez p1, :cond_12

    .line 250
    .line 251
    return v3

    .line 252
    :cond_12
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->height_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhysicalHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->physicalHeight_:I

    return v0
.end method

.method public getPhysicalWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->physicalWidth_:I

    return v0
.end method

.method public getSensitivity()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->sensitivity_:I

    return v0
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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->width_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->height_:I

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v2, v0

    .line 34
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

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
    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->uiNavigation_:Z

    .line 42
    .line 43
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v2, v0

    .line 48
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->physicalWidth_:I

    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/2addr v2, v0

    .line 62
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

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
    iget v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->physicalHeight_:I

    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr v2, v0

    .line 76
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

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
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->uiAbsolute_:Z

    .line 84
    .line 85
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    add-int/2addr v2, v0

    .line 90
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

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
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->tapAsSelect_:Z

    .line 98
    .line 99
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/2addr v2, v0

    .line 104
    :cond_7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 105
    .line 106
    and-int/lit16 v0, v0, 0x80

    .line 107
    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->sensitivity_:I

    .line 111
    .line 112
    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

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

.method public getTapAsSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->tapAsSelect_:Z

    return v0
.end method

.method public getUiAbsolute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->uiAbsolute_:Z

    return v0
.end method

.method public getUiNavigation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->uiNavigation_:Z

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPhysicalHeight()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPhysicalWidth()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSensitivity()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTapAsSelect()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUiAbsolute()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUiNavigation()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWidth()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasWidth()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasHeight()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const/16 v1, 0x25

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    const/16 v3, 0x35

    .line 46
    .line 47
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasUiNavigation()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    const/16 v1, 0x25

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    const/16 v3, 0x35

    .line 66
    .line 67
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getUiNavigation()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    add-int/2addr v0, v1

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasPhysicalWidth()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    const/16 v1, 0x25

    .line 87
    .line 88
    const/4 v2, 0x4

    .line 89
    const/16 v3, 0x35

    .line 90
    .line 91
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getPhysicalWidth()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    add-int/2addr v0, v1

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasPhysicalHeight()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    const/16 v1, 0x25

    .line 107
    .line 108
    const/4 v2, 0x5

    .line 109
    const/16 v3, 0x35

    .line 110
    .line 111
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getPhysicalHeight()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    add-int/2addr v0, v1

    .line 120
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasUiAbsolute()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_6

    .line 125
    .line 126
    const/16 v1, 0x25

    .line 127
    .line 128
    const/4 v2, 0x6

    .line 129
    const/16 v3, 0x35

    .line 130
    .line 131
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getUiAbsolute()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    add-int/2addr v0, v1

    .line 144
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasTapAsSelect()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_7

    .line 149
    .line 150
    const/16 v1, 0x25

    .line 151
    .line 152
    const/4 v2, 0x7

    .line 153
    const/16 v3, 0x35

    .line 154
    .line 155
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getTapAsSelect()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    add-int/2addr v0, v1

    .line 168
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasSensitivity()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_8

    .line 173
    .line 174
    const/16 v1, 0x25

    .line 175
    .line 176
    const/16 v2, 0x8

    .line 177
    .line 178
    const/16 v3, 0x35

    .line 179
    .line 180
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->getSensitivity()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    add-int/2addr v0, v1

    .line 189
    :cond_8
    mul-int/lit8 v0, v0, 0x1d

    .line 190
    .line 191
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    add-int/2addr v1, v0

    .line 198
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 199
    .line 200
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$28700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

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
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->memoizedIsInitialized:B

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasWidth()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->memoizedIsInitialized:B

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->hasHeight()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->memoizedIsInitialized:B

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->memoizedIsInitialized:B

    .line 30
    .line 31
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->newBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->newBuilderForType()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->newBuilderForType()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->toBuilder()Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->width_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->height_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

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
    iget-boolean v2, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->uiNavigation_:Z

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->physicalWidth_:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

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
    iget v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->physicalHeight_:I

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

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
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->uiAbsolute_:Z

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 69
    .line 70
    .line 71
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

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
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->tapAsSelect_:Z

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 81
    .line 82
    .line 83
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->bitField0_:I

    .line 84
    .line 85
    and-int/lit16 v0, v0, 0x80

    .line 86
    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    iget v0, p0, Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;->sensitivity_:I

    .line 90
    .line 91
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

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
