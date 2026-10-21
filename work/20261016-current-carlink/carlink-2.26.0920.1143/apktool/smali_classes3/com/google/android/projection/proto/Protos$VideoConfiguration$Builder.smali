.class public final Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$VideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private codecResolution_:I

.field private decoderAdditionalDepth_:I

.field private density_:I

.field private frameRate_:I

.field private heightMargin_:I

.field private pixelAspectRatioE4_:I

.field private realDensity_:I

.field private uiConfigBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$UiConfig;",
            "Lcom/google/android/projection/proto/Protos$UiConfig$Builder;",
            "Lcom/google/android/projection/proto/Protos$UiConfigOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

.field private videoCodecType_:I

.field private viewingDistance_:I

.field private widthMargin_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->codecResolution_:I

    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->frameRate_:I

    .line 6
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->videoCodecType_:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->codecResolution_:I

    .line 10
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->frameRate_:I

    .line 11
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->videoCodecType_:I

    .line 12
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$18700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getUiConfigFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$UiConfig;",
            "Lcom/google/android/projection/proto/Protos$UiConfig$Builder;",
            "Lcom/google/android/projection/proto/Protos$UiConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfigBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->getUiConfig()Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfigBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfigBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$19100()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->getUiConfigFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->codecResolution_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$19302(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 6
    :cond_1
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->frameRate_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$19402(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    .line 7
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->widthMargin_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$19502(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    .line 8
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->heightMargin_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$19602(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I

    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    .line 9
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->density_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$19702(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I

    or-int/lit8 v2, v2, 0x10

    :cond_4
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    .line 10
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->decoderAdditionalDepth_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$19802(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I

    or-int/lit8 v2, v2, 0x20

    :cond_5
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_6

    .line 11
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->viewingDistance_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$19902(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I

    or-int/lit8 v2, v2, 0x40

    :cond_6
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_7

    .line 12
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->pixelAspectRatioE4_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$20002(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I

    or-int/lit16 v2, v2, 0x80

    :cond_7
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_8

    .line 13
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->realDensity_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$20102(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I

    or-int/lit16 v2, v2, 0x100

    :cond_8
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_9

    or-int/lit16 v2, v2, 0x200

    .line 14
    :cond_9
    iget v3, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->videoCodecType_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$20202(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_b

    .line 15
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfigBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_a

    .line 16
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$20302(Lcom/google/android/projection/proto/Protos$VideoConfiguration;Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig;

    goto :goto_1

    .line 17
    :cond_a
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Protos$UiConfig;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$20302(Lcom/google/android/projection/proto/Protos$VideoConfiguration;Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig;

    :goto_1
    or-int/lit16 v2, v2, 0x400

    .line 18
    :cond_b
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$20402(Lcom/google/android/projection/proto/Protos$VideoConfiguration;I)I

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->codecResolution_:I

    .line 7
    iget v1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->frameRate_:I

    and-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->widthMargin_:I

    and-int/lit8 v1, v1, -0x5

    .line 10
    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->heightMargin_:I

    and-int/lit8 v1, v1, -0x9

    .line 11
    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->density_:I

    and-int/lit8 v1, v1, -0x11

    .line 12
    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->decoderAdditionalDepth_:I

    and-int/lit8 v1, v1, -0x21

    .line 13
    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->viewingDistance_:I

    and-int/lit8 v1, v1, -0x41

    .line 14
    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->pixelAspectRatioE4_:I

    and-int/lit16 v1, v1, -0x81

    .line 15
    iput v2, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->realDensity_:I

    and-int/lit16 v1, v1, -0x101

    .line 16
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->videoCodecType_:I

    and-int/lit16 v0, v1, -0x201

    .line 17
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfigBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 21
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clear()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clear()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clear()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clear()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCodecResolution()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->codecResolution_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearDecoderAdditionalDepth()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->decoderAdditionalDepth_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearDensity()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->density_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFrameRate()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->frameRate_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearHeightMargin()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->heightMargin_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPixelAspectRatioE4()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->pixelAspectRatioE4_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearRealDensity()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->realDensity_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearUiConfig()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfigBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit16 v0, v0, -0x401

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearVideoCodecType()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x201

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->videoCodecType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearViewingDistance()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->viewingDistance_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearWidthMargin()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->widthMargin_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->clone()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCodecResolution()Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->codecResolution_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->decoderAdditionalDepth_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->density_:I

    return v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$18700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFrameRate()Lcom/google/android/projection/proto/Protos$VideoFrameRateType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->frameRate_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->heightMargin_:I

    return v0
.end method

.method public getPixelAspectRatioE4()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->pixelAspectRatioE4_:I

    return v0
.end method

.method public getRealDensity()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->realDensity_:I

    return v0
.end method

.method public getUiConfig()Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfigBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 19
    .line 20
    return-object v0
.end method

.method public getUiConfigBuilder()Lcom/google/android/projection/proto/Protos$UiConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->getUiConfigFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getUiConfigOrBuilder()Lcom/google/android/projection/proto/Protos$UiConfigOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfigBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Protos$UiConfigOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getVideoCodecType()Lcom/google/android/projection/proto/Protos$MediaCodecType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->videoCodecType_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->viewingDistance_:I

    return v0
.end method

.method public getWidthMargin()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->widthMargin_:I

    return v0
.end method

.method public hasCodecResolution()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasCodecResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getCodecResolution()Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setCodecResolution(Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasFrameRate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getFrameRate()Lcom/google/android/projection/proto/Protos$VideoFrameRateType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setFrameRate(Lcom/google/android/projection/proto/Protos$VideoFrameRateType;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasWidthMargin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getWidthMargin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setWidthMargin(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasHeightMargin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getHeightMargin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setHeightMargin(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasDensity()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setDensity(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasDecoderAdditionalDepth()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDecoderAdditionalDepth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setDecoderAdditionalDepth(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasViewingDistance()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getViewingDistance()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setViewingDistance(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 25
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasPixelAspectRatioE4()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getPixelAspectRatioE4()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setPixelAspectRatioE4(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasRealDensity()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getRealDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setRealDensity(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 29
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasVideoCodecType()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getVideoCodecType()Lcom/google/android/projection/proto/Protos$MediaCodecType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setVideoCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 31
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasUiConfig()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getUiConfig()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeUiConfig(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 33
    :cond_b
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->access$20500(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 35
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 40
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeUiConfig(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfigBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0x400

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Protos$UiConfig;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$UiConfig;->newBuilder(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$UiConfig$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit16 p1, p1, 0x400

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCodecResolution(Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->codecResolution_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setDecoderAdditionalDepth(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->decoderAdditionalDepth_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setDensity(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->density_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFrameRate(Lcom/google/android/projection/proto/Protos$VideoFrameRateType;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoFrameRateType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->frameRate_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setHeightMargin(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->heightMargin_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setPixelAspectRatioE4(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->pixelAspectRatioE4_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setRealDensity(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->realDensity_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUiConfig(Lcom/google/android/projection/proto/Protos$UiConfig$Builder;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfigBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->build()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$UiConfig$Builder;->build()Lcom/google/android/projection/proto/Protos$UiConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    return-object p0
.end method

.method public setUiConfig(Lcom/google/android/projection/proto/Protos$UiConfig;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfigBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->uiConfig_:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVideoCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x200

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->videoCodecType_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setViewingDistance(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->viewingDistance_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setWidthMargin(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->widthMargin_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
