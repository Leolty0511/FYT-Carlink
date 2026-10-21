.class public final Lcom/google/android/projection/proto/Protos$VideoConfiguration;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CODEC_RESOLUTION_FIELD_NUMBER:I = 0x1

.field public static final DECODER_ADDITIONAL_DEPTH_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VideoConfiguration;

.field public static final DENSITY_FIELD_NUMBER:I = 0x5

.field public static final FRAME_RATE_FIELD_NUMBER:I = 0x2

.field public static final HEIGHT_MARGIN_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PIXEL_ASPECT_RATIO_E4_FIELD_NUMBER:I = 0x8

.field public static final REAL_DENSITY_FIELD_NUMBER:I = 0x9

.field public static final UI_CONFIG_FIELD_NUMBER:I = 0xb

.field public static final VIDEO_CODEC_TYPE_FIELD_NUMBER:I = 0xa

.field public static final VIEWING_DISTANCE_FIELD_NUMBER:I = 0x7

.field public static final WIDTH_MARGIN_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private codecResolution_:I

.field private decoderAdditionalDepth_:I

.field private density_:I

.field private frameRate_:I

.field private heightMargin_:I

.field private memoizedIsInitialized:B

.field private pixelAspectRatioE4_:I

.field private realDensity_:I

.field private uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

.field private videoCodecType_:I

.field private viewingDistance_:I

.field private widthMargin_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->memoizedIsInitialized:B

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->codecResolution_:I

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->frameRate_:I

    .line 9
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->videoCodecType_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5

    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;-><init>()V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 14
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_3

    .line 15
    :sswitch_0
    iget v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    .line 16
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$UiConfig;->toBuilder()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 17
    :goto_1
    sget-object v3, Lcom/google/android/projection/proto/Protos$UiConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$UiConfig;

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 20
    :cond_2
    iget v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    goto :goto_0

    .line 21
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 22
    invoke-static {v2}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->valueOf(I)Lcom/google/android/projection/proto/Protos$MediaCodecType;

    move-result-object v3

    if-nez v3, :cond_3

    const/16 v3, 0xa

    .line 23
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 24
    :cond_3
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 25
    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->videoCodecType_:I

    goto :goto_0

    .line 26
    :sswitch_2
    iget v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 27
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->realDensity_:I

    goto :goto_0

    .line 28
    :sswitch_3
    iget v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 29
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->pixelAspectRatioE4_:I

    goto :goto_0

    .line 30
    :sswitch_4
    iget v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->viewingDistance_:I

    goto :goto_0

    .line 32
    :sswitch_5
    iget v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 33
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->decoderAdditionalDepth_:I

    goto/16 :goto_0

    .line 34
    :sswitch_6
    iget v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 35
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->density_:I

    goto/16 :goto_0

    .line 36
    :sswitch_7
    iget v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 37
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->heightMargin_:I

    goto/16 :goto_0

    .line 38
    :sswitch_8
    iget v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 39
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->widthMargin_:I

    goto/16 :goto_0

    .line 40
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 41
    invoke-static {v2}, Lcom/google/android/projection/proto/Protos$VideoFrameRateType;->valueOf(I)Lcom/google/android/projection/proto/Protos$VideoFrameRateType;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_4

    .line 42
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 43
    :cond_4
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 44
    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->frameRate_:I

    goto/16 :goto_0

    .line 45
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 46
    invoke-static {v2}, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->valueOf(I)Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    move-result-object v4

    if-nez v4, :cond_5

    .line 47
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 48
    :cond_5
    iget v4, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 49
    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->codecResolution_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_b
    move v1, v3

    goto/16 :goto_0

    :goto_3
    if-nez v2, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 50
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 51
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 52
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 54
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 55
    throw p1

    .line 56
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 57
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x18 -> :sswitch_8
        0x20 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x48 -> :sswitch_2
        0x50 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$19100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$19302(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->codecResolution_:I

    return p1
.end method

.method public static synthetic access$19402(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->frameRate_:I

    return p1
.end method

.method public static synthetic access$19502(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->widthMargin_:I

    return p1
.end method

.method public static synthetic access$19602(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->heightMargin_:I

    return p1
.end method

.method public static synthetic access$19702(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->density_:I

    return p1
.end method

.method public static synthetic access$19802(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->decoderAdditionalDepth_:I

    return p1
.end method

.method public static synthetic access$19902(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->viewingDistance_:I

    return p1
.end method

.method public static synthetic access$20002(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->pixelAspectRatioE4_:I

    return p1
.end method

.method public static synthetic access$20102(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->realDensity_:I

    return p1
.end method

.method public static synthetic access$20202(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->videoCodecType_:I

    return p1
.end method

.method public static synthetic access$20302(Lcom/google/android/projection/proto/Protos$VideoConfiguration;Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object p1
.end method

.method public static synthetic access$20402(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    return p1
.end method

.method public static synthetic access$20500(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$18700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->toBuilder()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->toBuilder()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasCodecResolution()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasCodecResolution()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasCodecResolution()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->codecResolution_:I

    .line 35
    .line 36
    iget v2, p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->codecResolution_:I

    .line 37
    .line 38
    if-eq v1, v2, :cond_3

    .line 39
    .line 40
    return v3

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasFrameRate()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasFrameRate()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eq v1, v2, :cond_4

    .line 50
    .line 51
    return v3

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasFrameRate()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->frameRate_:I

    .line 59
    .line 60
    iget v2, p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->frameRate_:I

    .line 61
    .line 62
    if-eq v1, v2, :cond_5

    .line 63
    .line 64
    return v3

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasWidthMargin()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasWidthMargin()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eq v1, v2, :cond_6

    .line 74
    .line 75
    return v3

    .line 76
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasWidthMargin()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_7

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getWidthMargin()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getWidthMargin()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eq v1, v2, :cond_7

    .line 91
    .line 92
    return v3

    .line 93
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasHeightMargin()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasHeightMargin()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eq v1, v2, :cond_8

    .line 102
    .line 103
    return v3

    .line 104
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasHeightMargin()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_9

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getHeightMargin()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getHeightMargin()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eq v1, v2, :cond_9

    .line 119
    .line 120
    return v3

    .line 121
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasDensity()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasDensity()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eq v1, v2, :cond_a

    .line 130
    .line 131
    return v3

    .line 132
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasDensity()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_b

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDensity()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDensity()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eq v1, v2, :cond_b

    .line 147
    .line 148
    return v3

    .line 149
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasDecoderAdditionalDepth()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasDecoderAdditionalDepth()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eq v1, v2, :cond_c

    .line 158
    .line 159
    return v3

    .line 160
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasDecoderAdditionalDepth()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_d

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDecoderAdditionalDepth()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDecoderAdditionalDepth()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eq v1, v2, :cond_d

    .line 175
    .line 176
    return v3

    .line 177
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasViewingDistance()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasViewingDistance()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eq v1, v2, :cond_e

    .line 186
    .line 187
    return v3

    .line 188
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasViewingDistance()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_f

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getViewingDistance()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getViewingDistance()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eq v1, v2, :cond_f

    .line 203
    .line 204
    return v3

    .line 205
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasPixelAspectRatioE4()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasPixelAspectRatioE4()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eq v1, v2, :cond_10

    .line 214
    .line 215
    return v3

    .line 216
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasPixelAspectRatioE4()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_11

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getPixelAspectRatioE4()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getPixelAspectRatioE4()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eq v1, v2, :cond_11

    .line 231
    .line 232
    return v3

    .line 233
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasRealDensity()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasRealDensity()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eq v1, v2, :cond_12

    .line 242
    .line 243
    return v3

    .line 244
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasRealDensity()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-eqz v1, :cond_13

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getRealDensity()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getRealDensity()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eq v1, v2, :cond_13

    .line 259
    .line 260
    return v3

    .line 261
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasVideoCodecType()Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasVideoCodecType()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eq v1, v2, :cond_14

    .line 270
    .line 271
    return v3

    .line 272
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasVideoCodecType()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_15

    .line 277
    .line 278
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->videoCodecType_:I

    .line 279
    .line 280
    iget v2, p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->videoCodecType_:I

    .line 281
    .line 282
    if-eq v1, v2, :cond_15

    .line 283
    .line 284
    return v3

    .line 285
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasUiConfig()Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasUiConfig()Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eq v1, v2, :cond_16

    .line 294
    .line 295
    return v3

    .line 296
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasUiConfig()Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_17

    .line 301
    .line 302
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getUiConfig()Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getUiConfig()Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Protos$UiConfig;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-nez v1, :cond_17

    .line 315
    .line 316
    return v3

    .line 317
    :cond_17
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 318
    .line 319
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 320
    .line 321
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    if-nez p1, :cond_18

    .line 326
    .line 327
    return v3

    .line 328
    :cond_18
    return v0
.end method

.method public getCodecResolution()Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->codecResolution_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->valueOf(I)Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_800x480:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getDecoderAdditionalDepth()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->decoderAdditionalDepth_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->density_:I

    return v0
.end method

.method public getFrameRate()Lcom/google/android/projection/proto/Protos$VideoFrameRateType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->frameRate_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$VideoFrameRateType;->valueOf(I)Lcom/google/android/projection/proto/Protos$VideoFrameRateType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoFrameRateType;->VIDEO_FPS_60:Lcom/google/android/projection/proto/Protos$VideoFrameRateType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getHeightMargin()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->heightMargin_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPixelAspectRatioE4()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->pixelAspectRatioE4_:I

    return v0
.end method

.method public getRealDensity()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->realDensity_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->codecResolution_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->frameRate_:I

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v2, v0

    .line 34
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

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
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->widthMargin_:I

    .line 42
    .line 43
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v2, v0

    .line 48
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->heightMargin_:I

    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/2addr v2, v0

    .line 62
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

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
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->density_:I

    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr v2, v0

    .line 76
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

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
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->decoderAdditionalDepth_:I

    .line 84
    .line 85
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    add-int/2addr v2, v0

    .line 90
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

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
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->viewingDistance_:I

    .line 98
    .line 99
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/2addr v2, v0

    .line 104
    :cond_7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 105
    .line 106
    and-int/lit16 v0, v0, 0x80

    .line 107
    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->pixelAspectRatioE4_:I

    .line 111
    .line 112
    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    add-int/2addr v2, v0

    .line 117
    :cond_8
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 118
    .line 119
    and-int/lit16 v0, v0, 0x100

    .line 120
    .line 121
    if-eqz v0, :cond_9

    .line 122
    .line 123
    const/16 v0, 0x9

    .line 124
    .line 125
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->realDensity_:I

    .line 126
    .line 127
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    add-int/2addr v2, v0

    .line 132
    :cond_9
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 133
    .line 134
    and-int/lit16 v0, v0, 0x200

    .line 135
    .line 136
    if-eqz v0, :cond_a

    .line 137
    .line 138
    const/16 v0, 0xa

    .line 139
    .line 140
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->videoCodecType_:I

    .line 141
    .line 142
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    add-int/2addr v2, v0

    .line 147
    :cond_a
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 148
    .line 149
    and-int/lit16 v0, v0, 0x400

    .line 150
    .line 151
    if-eqz v0, :cond_b

    .line 152
    .line 153
    const/16 v0, 0xb

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getUiConfig()Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    add-int/2addr v2, v0

    .line 164
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    add-int/2addr v0, v2

    .line 171
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 172
    .line 173
    return v0
.end method

.method public getUiConfig()Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUiConfigOrBuilder()Lcom/google/android/projection/proto/Protos$UiConfigOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVideoCodecType()Lcom/google/android/projection/proto/Protos$MediaCodecType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->videoCodecType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->valueOf(I)Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_PCM:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getViewingDistance()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->viewingDistance_:I

    return v0
.end method

.method public getWidthMargin()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->widthMargin_:I

    return v0
.end method

.method public hasCodecResolution()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDecoderAdditionalDepth()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDensity()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFrameRate()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeightMargin()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPixelAspectRatioE4()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRealDensity()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUiConfig()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVideoCodecType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasViewingDistance()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWidthMargin()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasCodecResolution()Z

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
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->codecResolution_:I

    .line 32
    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasFrameRate()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const/16 v1, 0x25

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    const/16 v3, 0x35

    .line 44
    .line 45
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->frameRate_:I

    .line 50
    .line 51
    add-int/2addr v0, v1

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasWidthMargin()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    const/16 v1, 0x25

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    const/16 v3, 0x35

    .line 62
    .line 63
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getWidthMargin()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int/2addr v0, v1

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasHeightMargin()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    const/16 v1, 0x25

    .line 79
    .line 80
    const/4 v2, 0x4

    .line 81
    const/16 v3, 0x35

    .line 82
    .line 83
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getHeightMargin()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasDensity()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    const/16 v1, 0x25

    .line 99
    .line 100
    const/4 v2, 0x5

    .line 101
    const/16 v3, 0x35

    .line 102
    .line 103
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDensity()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v0, v1

    .line 112
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasDecoderAdditionalDepth()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    const/16 v1, 0x25

    .line 119
    .line 120
    const/4 v2, 0x6

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDecoderAdditionalDepth()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    add-int/2addr v0, v1

    .line 132
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasViewingDistance()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    const/16 v1, 0x25

    .line 139
    .line 140
    const/4 v2, 0x7

    .line 141
    const/16 v3, 0x35

    .line 142
    .line 143
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getViewingDistance()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    add-int/2addr v0, v1

    .line 152
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasPixelAspectRatioE4()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_8

    .line 157
    .line 158
    const/16 v1, 0x25

    .line 159
    .line 160
    const/16 v2, 0x8

    .line 161
    .line 162
    const/16 v3, 0x35

    .line 163
    .line 164
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getPixelAspectRatioE4()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    add-int/2addr v0, v1

    .line 173
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasRealDensity()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_9

    .line 178
    .line 179
    const/16 v1, 0x25

    .line 180
    .line 181
    const/16 v2, 0x9

    .line 182
    .line 183
    const/16 v3, 0x35

    .line 184
    .line 185
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getRealDensity()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    add-int/2addr v0, v1

    .line 194
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasVideoCodecType()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_a

    .line 199
    .line 200
    const/16 v1, 0x25

    .line 201
    .line 202
    const/16 v2, 0xa

    .line 203
    .line 204
    const/16 v3, 0x35

    .line 205
    .line 206
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->videoCodecType_:I

    .line 211
    .line 212
    add-int/2addr v0, v1

    .line 213
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasUiConfig()Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_b

    .line 218
    .line 219
    const/16 v1, 0x25

    .line 220
    .line 221
    const/16 v2, 0xb

    .line 222
    .line 223
    const/16 v3, 0x35

    .line 224
    .line 225
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getUiConfig()Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$UiConfig;->hashCode()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    add-int/2addr v0, v1

    .line 238
    :cond_b
    mul-int/lit8 v0, v0, 0x1d

    .line 239
    .line 240
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    add-int/2addr v1, v0

    .line 247
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 248
    .line 249
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$18800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->newBuilder()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->newBuilderForType()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->newBuilderForType()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->toBuilder()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->toBuilder()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->codecResolution_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->frameRate_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

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
    iget v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->widthMargin_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->heightMargin_:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

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
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->density_:I

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

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
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->decoderAdditionalDepth_:I

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 69
    .line 70
    .line 71
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

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
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->viewingDistance_:I

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 81
    .line 82
    .line 83
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 84
    .line 85
    and-int/lit16 v0, v0, 0x80

    .line 86
    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->pixelAspectRatioE4_:I

    .line 90
    .line 91
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 92
    .line 93
    .line 94
    :cond_7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 95
    .line 96
    and-int/lit16 v0, v0, 0x100

    .line 97
    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    const/16 v0, 0x9

    .line 101
    .line 102
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->realDensity_:I

    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 105
    .line 106
    .line 107
    :cond_8
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 108
    .line 109
    and-int/lit16 v0, v0, 0x200

    .line 110
    .line 111
    if-eqz v0, :cond_9

    .line 112
    .line 113
    const/16 v0, 0xa

    .line 114
    .line 115
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->videoCodecType_:I

    .line 116
    .line 117
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 118
    .line 119
    .line 120
    :cond_9
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->bitField0_:I

    .line 121
    .line 122
    and-int/lit16 v0, v0, 0x400

    .line 123
    .line 124
    if-eqz v0, :cond_a

    .line 125
    .line 126
    const/16 v0, 0xb

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getUiConfig()Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 133
    .line 134
    .line 135
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method
