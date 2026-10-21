.class public final Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadataOrBuilder;"
    }
.end annotation


# instance fields
.field private albumArt_:Lcom/google/protobuf/ByteString;

.field private album_:Ljava/lang/Object;

.field private artist_:Ljava/lang/Object;

.field private bitField0_:I

.field private durationSeconds_:I

.field private playlist_:Ljava/lang/Object;

.field private rating_:I

.field private song_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->song_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->artist_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->album_:Ljava/lang/Object;

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->albumArt_:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->playlist_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->song_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->artist_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->album_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->albumArt_:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->playlist_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$208100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$208500()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->song_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$208702(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->artist_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$208802(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->album_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$208902(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x8

    :cond_3
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->albumArt_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$209002(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x10

    :cond_4
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->playlist_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$209102(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->durationSeconds_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$209202(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;I)I

    or-int/lit8 v2, v2, 0x20

    :cond_5
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->rating_:I

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$209302(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;I)I

    or-int/lit8 v2, v2, 0x40

    :cond_6
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$209402(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->song_:Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->artist_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x3

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->album_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->albumArt_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x9

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->playlist_:Ljava/lang/Object;

    and-int/lit8 v0, v1, -0x11

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->durationSeconds_:I

    and-int/lit8 v0, v0, -0x21

    iput v1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->rating_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clear()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clear()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clear()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clear()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAlbum()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->album_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAlbumArt()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getAlbumArt()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->albumArt_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearArtist()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->artist_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDurationSeconds()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->durationSeconds_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPlaylist()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getPlaylist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->playlist_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRating()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->rating_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSong()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getSong()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->song_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->album_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->album_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArt()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->albumArt_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAlbumBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->album_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->album_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->artist_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->artist_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtistBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->artist_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->artist_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$208100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDurationSeconds()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->durationSeconds_:I

    return v0
.end method

.method public getPlaylist()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->playlist_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->playlist_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->playlist_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->playlist_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->rating_:I

    return v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->song_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->song_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSongBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->song_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->song_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAlbum()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAlbumArt()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDurationSeconds()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPlaylist()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRating()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSong()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$208200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    const-class v2, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->hasSong()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$208700(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->song_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->hasArtist()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$208800(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->artist_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$208900(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->album_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->hasAlbumArt()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getAlbumArt()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->setAlbumArt(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->hasPlaylist()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$209100(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->playlist_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->hasDurationSeconds()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getDurationSeconds()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->setDurationSeconds(I)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->getRating()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->setRating(I)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    :cond_7
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->access$209500(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAlbum(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->album_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAlbumArt(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->albumArt_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAlbumBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->album_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->artist_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setArtistBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->artist_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDurationSeconds(I)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->durationSeconds_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPlaylist(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->playlist_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPlaylistBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->playlist_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRating(I)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->rating_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSong(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->song_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSongBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->song_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaPlaybackMetadata$Builder;

    move-result-object p1

    return-object p1
.end method
