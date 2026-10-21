.class public final Lcom/google/android/projection/proto/Protos$UiConfig;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$UiConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UiConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    }
.end annotation


# static fields
.field public static final ACTIONS_FIELD_NUMBER:I = 0x6

.field public static final CONTENT_INSETS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$UiConfig;

.field public static final MARGINS_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$UiConfig;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STABLE_CONTENT_INSETS_FIELD_NUMBER:I = 0x3

.field public static final UI_ELEMENTS_FIELD_NUMBER:I = 0x5

.field public static final UI_THEME_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J

.field private static final uiElements_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/projection/proto/Protos$UiElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Action;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

.field private margins_:Lcom/google/android/projection/proto/Protos$Insets;

.field private memoizedIsInitialized:B

.field private stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

.field private uiElements_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private uiTheme_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$UiConfig$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$UiConfig$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$UiConfig;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/projection/proto/Protos$UiConfig$2;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$UiConfig$2;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiTheme_:I

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9

    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;-><init>()V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x20

    if-nez v1, :cond_18

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_15

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eq v4, v6, :cond_12

    const/16 v6, 0x12

    if-eq v4, v6, :cond_f

    const/16 v6, 0x1a

    const/4 v8, 0x4

    if-eq v4, v6, :cond_c

    if-eq v4, v3, :cond_a

    const/16 v6, 0x28

    const/4 v7, 0x5

    if-eq v4, v6, :cond_7

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_3

    const/16 v6, 0x32

    if-eq v4, v6, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_1
    and-int/lit8 v4, v2, 0x20

    if-nez v4, :cond_2

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 16
    :cond_2
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    sget-object v5, Lcom/google/android/projection/proto/Protos$Action;->PARSER:Lcom/google/protobuf/Parser;

    .line 17
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/projection/proto/Protos$Action;

    .line 18
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 20
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 21
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 23
    invoke-static {v5}, Lcom/google/android/projection/proto/Protos$UiElement;->valueOf(I)Lcom/google/android/projection/proto/Protos$UiElement;

    move-result-object v6

    if-nez v6, :cond_4

    .line 24
    invoke-virtual {v0, v7, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_1

    :cond_4
    and-int/lit8 v6, v2, 0x10

    if-nez v6, :cond_5

    .line 25
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 26
    :cond_5
    iget-object v6, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_6
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 29
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$UiElement;->valueOf(I)Lcom/google/android/projection/proto/Protos$UiElement;

    move-result-object v5

    if-nez v5, :cond_8

    .line 30
    invoke-virtual {v0, v7, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_9

    .line 31
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 32
    :cond_9
    iget-object v5, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 33
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 34
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$UiTheme;->valueOf(I)Lcom/google/android/projection/proto/Protos$UiTheme;

    move-result-object v5

    if-nez v5, :cond_b

    .line 35
    invoke-virtual {v0, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 36
    :cond_b
    iget v5, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    .line 37
    iput v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiTheme_:I

    goto/16 :goto_0

    .line 38
    :cond_c
    iget v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_d

    .line 39
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$Insets;->toBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object v7

    .line 40
    :cond_d
    sget-object v4, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Protos$Insets;

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    if-eqz v7, :cond_e

    .line 41
    invoke-virtual {v7, v4}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets$Builder;

    .line 42
    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 43
    :cond_e
    iget v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    or-int/2addr v4, v8

    iput v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    goto/16 :goto_0

    .line 44
    :cond_f
    iget v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_10

    .line 45
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$Insets;->toBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object v7

    .line 46
    :cond_10
    sget-object v4, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Protos$Insets;

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    if-eqz v7, :cond_11

    .line 47
    invoke-virtual {v7, v4}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets$Builder;

    .line 48
    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 49
    :cond_11
    iget v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    goto/16 :goto_0

    .line 50
    :cond_12
    iget v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_13

    .line 51
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$Insets;->toBuilder()Lcom/google/android/projection/proto/Protos$Insets$Builder;

    move-result-object v7

    .line 52
    :cond_13
    sget-object v4, Lcom/google/android/projection/proto/Protos$Insets;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Protos$Insets;

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    if-eqz v7, :cond_14

    .line 53
    invoke-virtual {v7, v4}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets$Builder;

    .line 54
    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$Insets$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    .line 55
    :cond_14
    iget v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_15
    :goto_2
    move v1, v5

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 56
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 57
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 58
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_16

    .line 59
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    :cond_16
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_17

    .line 60
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    .line 61
    :cond_17
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 62
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 63
    throw p1

    :cond_18
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_19

    .line 64
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    :cond_19
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_1a

    .line 65
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    .line 66
    :cond_1a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 67
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$UiConfig;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$21100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$21302(Lcom/google/android/projection/proto/Protos$UiConfig;Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    return-object p1
.end method

.method public static synthetic access$21402(Lcom/google/android/projection/proto/Protos$UiConfig;Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    return-object p1
.end method

.method public static synthetic access$21502(Lcom/google/android/projection/proto/Protos$UiConfig;Lcom/google/android/projection/proto/Protos$Insets;)Lcom/google/android/projection/proto/Protos$Insets;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    return-object p1
.end method

.method public static synthetic access$21602(Lcom/google/android/projection/proto/Protos$UiConfig;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiTheme_:I

    return p1
.end method

.method public static synthetic access$21700(Lcom/google/android/projection/proto/Protos$UiConfig;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$21702(Lcom/google/android/projection/proto/Protos$UiConfig;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$21800(Lcom/google/android/projection/proto/Protos$UiConfig;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$21802(Lcom/google/android/projection/proto/Protos$UiConfig;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$21902(Lcom/google/android/projection/proto/Protos$UiConfig;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    return p1
.end method

.method public static synthetic access$22000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$22100(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$22200()Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$20700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$UiConfig;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$UiConfig;->toBuilder()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$UiConfig;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$UiConfig;->toBuilder()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$UiConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$UiConfig;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasMargins()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasMargins()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasMargins()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getMargins()Lcom/google/android/projection/proto/Protos$Insets;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->getMargins()Lcom/google/android/projection/proto/Protos$Insets;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$Insets;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasContentInsets()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasContentInsets()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasContentInsets()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->getContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$Insets;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasStableContentInsets()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasStableContentInsets()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasStableContentInsets()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getStableContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->getStableContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$Insets;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasUiTheme()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasUiTheme()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasUiTheme()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_9

    .line 129
    .line 130
    iget v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiTheme_:I

    .line 131
    .line 132
    iget v2, p1, Lcom/google/android/projection/proto/Protos$UiConfig;->uiTheme_:I

    .line 133
    .line 134
    if-eq v1, v2, :cond_9

    .line 135
    .line 136
    return v3

    .line 137
    :cond_9
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    .line 138
    .line 139
    iget-object v2, p1, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    .line 140
    .line 141
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_a

    .line 146
    .line 147
    return v3

    .line 148
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getActionsList()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->getActionsList()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_b

    .line 161
    .line 162
    return v3

    .line 163
    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 166
    .line 167
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_c

    .line 172
    .line 173
    return v3

    .line 174
    :cond_c
    return v0
.end method

.method public getActions(I)Lcom/google/android/projection/proto/Protos$Action;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Action;

    return-object p1
.end method

.method public getActionsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    return-object v0
.end method

.method public getActionsOrBuilder(I)Lcom/google/android/projection/proto/Protos$ActionOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ActionOrBuilder;

    return-object p1
.end method

.method public getActionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$ActionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    return-object v0
.end method

.method public getContentInsets()Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getContentInsetsOrBuilder()Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->contentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    return-object v0
.end method

.method public getMargins()Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMarginsOrBuilder()Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->margins_:Lcom/google/android/projection/proto/Protos$Insets;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

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
            "Lcom/google/android/projection/proto/Protos$UiConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getMargins()Lcom/google/android/projection/proto/Protos$Insets;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v0, v2

    .line 25
    :goto_0
    iget v3, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    and-int/2addr v3, v4

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    add-int/2addr v0, v3

    .line 40
    :cond_2
    iget v3, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    .line 41
    .line 42
    const/4 v4, 0x4

    .line 43
    and-int/2addr v3, v4

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getStableContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    add-int/2addr v0, v3

    .line 56
    :cond_3
    iget v3, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    .line 57
    .line 58
    and-int/lit8 v3, v3, 0x8

    .line 59
    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    iget v3, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiTheme_:I

    .line 63
    .line 64
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    add-int/2addr v0, v3

    .line 69
    :cond_4
    move v3, v2

    .line 70
    move v4, v3

    .line 71
    :goto_1
    iget-object v5, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-ge v3, v5, :cond_5

    .line 78
    .line 79
    iget-object v5, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    add-int/2addr v4, v5

    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    add-int/2addr v0, v4

    .line 100
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    mul-int/2addr v3, v1

    .line 107
    add-int/2addr v3, v0

    .line 108
    :goto_2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-ge v2, v0, :cond_6

    .line 115
    .line 116
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 123
    .line 124
    const/4 v1, 0x6

    .line 125
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    add-int/2addr v3, v0

    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    add-int/2addr v0, v3

    .line 140
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 141
    .line 142
    return v0
.end method

.method public getStableContentInsets()Lcom/google/android/projection/proto/Protos$Insets;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStableContentInsetsOrBuilder()Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->stableContentInsets_:Lcom/google/android/projection/proto/Protos$Insets;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Insets;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Insets;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUiElements(I)Lcom/google/android/projection/proto/Protos$UiElement;
    .locals 2

    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$UiElement;

    return-object p1
.end method

.method public getUiElementsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUiElementsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$UiElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    sget-object v2, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getUiTheme()Lcom/google/android/projection/proto/Protos$UiTheme;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiTheme_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$UiTheme;->valueOf(I)Lcom/google/android/projection/proto/Protos$UiTheme;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiTheme;->UI_THEME_AUTOMATIC:Lcom/google/android/projection/proto/Protos$UiTheme;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasContentInsets()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMargins()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStableContentInsets()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUiTheme()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasMargins()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getMargins()Lcom/google/android/projection/proto/Protos$Insets;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$Insets;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasContentInsets()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$Insets;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasStableContentInsets()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getStableContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$Insets;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->hasUiTheme()Z

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
    iget v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiTheme_:I

    .line 104
    .line 105
    add-int/2addr v0, v1

    .line 106
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getUiElementsCount()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-lez v1, :cond_5

    .line 111
    .line 112
    const/16 v1, 0x25

    .line 113
    .line 114
    const/4 v2, 0x5

    .line 115
    const/16 v3, 0x35

    .line 116
    .line 117
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    add-int/2addr v0, v1

    .line 128
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getActionsCount()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-lez v1, :cond_6

    .line 133
    .line 134
    const/16 v1, 0x25

    .line 135
    .line 136
    const/4 v2, 0x6

    .line 137
    const/16 v3, 0x35

    .line 138
    .line 139
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getActionsList()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    add-int/2addr v0, v1

    .line 152
    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    .line 153
    .line 154
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    add-int/2addr v1, v0

    .line 161
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 162
    .line 163
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$20800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->newBuilder()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->newBuilderForType()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->newBuilderForType()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$UiConfig;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$UiConfig;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$UiConfig;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$UiConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->toBuilder()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->toBuilder()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getMargins()Lcom/google/android/projection/proto/Protos$Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    and-int/2addr v0, v1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    and-int/2addr v0, v1

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$UiConfig;->getStableContentInsets()Lcom/google/android/projection/proto/Protos$Insets;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->bitField0_:I

    .line 42
    .line 43
    and-int/lit8 v0, v0, 0x8

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget v0, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiTheme_:I

    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 50
    .line 51
    .line 52
    :cond_3
    const/4 v0, 0x0

    .line 53
    move v1, v0

    .line 54
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-ge v1, v2, :cond_4

    .line 61
    .line 62
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->uiElements_:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    const/4 v3, 0x5

    .line 75
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-ge v0, v1, :cond_5

    .line 88
    .line 89
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$UiConfig;->actions_:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 96
    .line 97
    const/4 v2, 0x6

    .line 98
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
