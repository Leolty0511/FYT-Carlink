.class public final Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$HdRadioPsdDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$HdRadioPsdDataOrBuilder;"
    }
.end annotation


# instance fields
.field private album_:Ljava/lang/Object;

.field private artistExperienceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;",
            "Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;",
            "Lcom/google/android/projection/proto/Protos$HdRadioArtistExperienceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

.field private artist_:Ljava/lang/Object;

.field private bitField0_:I

.field private commentBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HdRadioComment;",
            "Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;",
            "Lcom/google/android/projection/proto/Protos$HdRadioCommentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

.field private commercialBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HdRadioCommercial;",
            "Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;",
            "Lcom/google/android/projection/proto/Protos$HdRadioCommercialOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

.field private genre_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->title_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artist_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->album_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->genre_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->title_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artist_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->album_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->genre_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getArtistExperienceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;",
            "Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;",
            "Lcom/google/android/projection/proto/Protos$HdRadioArtistExperienceOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperienceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->getArtistExperience()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperienceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperienceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCommentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HdRadioComment;",
            "Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;",
            "Lcom/google/android/projection/proto/Protos$HdRadioCommentOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commentBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->getComment()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commentBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commentBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCommercialFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HdRadioCommercial;",
            "Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;",
            "Lcom/google/android/projection/proto/Protos$HdRadioCommercialOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercialBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->getCommercial()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercialBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercialBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$160800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$161200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->getCommentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->getCommercialFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->getArtistExperienceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->build()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->build()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->title_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$161402(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artist_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$161502(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->album_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$161602(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x8

    :cond_3
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->genre_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$161702(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commentBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$HdRadioComment;

    :goto_1
    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$161802(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Lcom/google/android/projection/proto/Protos$HdRadioComment;)Lcom/google/android/projection/proto/Protos$HdRadioComment;

    or-int/lit8 v2, v2, 0x10

    :cond_5
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercialBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    :goto_2
    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$161902(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Lcom/google/android/projection/proto/Protos$HdRadioCommercial;)Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    or-int/lit8 v2, v2, 0x20

    :cond_7
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperienceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    :goto_3
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$162002(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;)Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    or-int/lit8 v2, v2, 0x40

    :cond_9
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$162102(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->title_:Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artist_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x3

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->album_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x5

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->genre_:Ljava/lang/Object;

    and-int/lit8 v0, v1, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commentBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercialBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperienceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clear()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clear()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clear()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clear()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAlbum()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getAlbum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->album_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearArtist()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artist_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearArtistExperience()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperienceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearComment()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commentBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCommercial()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercialBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearGenre()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getGenre()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->genre_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearTitle()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->title_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->album_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->album_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->album_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->album_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artist_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artist_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtistBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artist_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artist_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getArtistExperience()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperienceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    return-object v0
.end method

.method public getArtistExperienceBuilder()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->getArtistExperienceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;

    return-object v0
.end method

.method public getArtistExperienceOrBuilder()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperienceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperienceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperienceOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getComment()Lcom/google/android/projection/proto/Protos$HdRadioComment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commentBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioComment;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioComment;

    return-object v0
.end method

.method public getCommentBuilder()Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->getCommentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;

    return-object v0
.end method

.method public getCommentOrBuilder()Lcom/google/android/projection/proto/Protos$HdRadioCommentOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commentBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioCommentOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioComment;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCommercial()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercialBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    return-object v0
.end method

.method public getCommercialBuilder()Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->getCommercialFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;

    return-object v0
.end method

.method public getCommercialOrBuilder()Lcom/google/android/projection/proto/Protos$HdRadioCommercialOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercialBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioCommercialOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$160800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->genre_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->genre_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGenreBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->genre_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->genre_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->title_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->title_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->title_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->title_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAlbum()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasArtist()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasArtistExperience()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasComment()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCommercial()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGenre()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTitle()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$160900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    const-class v2, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeArtistExperience(Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperienceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;->newBuilder(Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;)Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;)Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeComment(Lcom/google/android/projection/proto/Protos$HdRadioComment;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commentBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioComment;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$HdRadioComment;->newBuilder(Lcom/google/android/projection/proto/Protos$HdRadioComment;)Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioComment;)Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeCommercial(Lcom/google/android/projection/proto/Protos$HdRadioCommercial;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercialBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial;->newBuilder(Lcom/google/android/projection/proto/Protos$HdRadioCommercial;)Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioCommercial;)Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$161400(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->title_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasArtist()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$161500(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artist_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$161600(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->album_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasGenre()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$161700(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->genre_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getComment()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeComment(Lcom/google/android/projection/proto/Protos$HdRadioComment;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasCommercial()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getCommercial()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeCommercial(Lcom/google/android/projection/proto/Protos$HdRadioCommercial;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->hasArtistExperience()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getArtistExperience()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeArtistExperience(Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    :cond_7
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->access$162200(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAlbum(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->album_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAlbumBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->album_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artist_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setArtistBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artist_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setArtistExperience(Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperienceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience$Builder;->build()Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setArtistExperience(Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperienceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->artistExperience_:Lcom/google/android/projection/proto/Protos$HdRadioArtistExperience;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setComment(Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commentBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioComment$Builder;->build()Lcom/google/android/projection/proto/Protos$HdRadioComment;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setComment(Lcom/google/android/projection/proto/Protos$HdRadioComment;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commentBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->comment_:Lcom/google/android/projection/proto/Protos$HdRadioComment;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCommercial(Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercialBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioCommercial$Builder;->build()Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCommercial(Lcom/google/android/projection/proto/Protos$HdRadioCommercial;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercialBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->commercial_:Lcom/google/android/projection/proto/Protos$HdRadioCommercial;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGenre(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->genre_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setGenreBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->genre_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->title_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->title_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    return-object p1
.end method
