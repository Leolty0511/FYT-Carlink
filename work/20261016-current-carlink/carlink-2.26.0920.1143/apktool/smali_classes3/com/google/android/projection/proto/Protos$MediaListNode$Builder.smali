.class public final Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$MediaListNodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$MediaListNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$MediaListNodeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private listBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$MediaList;",
            "Lcom/google/android/projection/proto/Protos$MediaList$Builder;",
            "Lcom/google/android/projection/proto/Protos$MediaListOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private list_:Lcom/google/android/projection/proto/Protos$MediaList;

.field private songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$MediaSong;",
            "Lcom/google/android/projection/proto/Protos$MediaSong$Builder;",
            "Lcom/google/android/projection/proto/Protos$MediaSongOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private songs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$MediaSong;",
            ">;"
        }
    .end annotation
.end field

.field private start_:I

.field private total_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureSongsIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$218700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getListFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$MediaList;",
            "Lcom/google/android/projection/proto/Protos$MediaList$Builder;",
            "Lcom/google/android/projection/proto/Protos$MediaListOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->listBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getList()Lcom/google/android/projection/proto/Protos$MediaList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->listBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->list_:Lcom/google/android/projection/proto/Protos$MediaList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->listBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getSongsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$MediaSong;",
            "Lcom/google/android/projection/proto/Protos$MediaSong$Builder;",
            "Lcom/google/android/projection/proto/Protos$MediaSongOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getListFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getSongsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllSongs(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$MediaSong;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->ensureSongsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSongs(ILcom/google/android/projection/proto/Protos$MediaSong$Builder;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->ensureSongsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$MediaSong$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaSong;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$MediaSong$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaSong;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSongs(ILcom/google/android/projection/proto/Protos$MediaSong;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->ensureSongsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSongs(Lcom/google/android/projection/proto/Protos$MediaSong$Builder;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->ensureSongsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSong$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaSong;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaSong$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaSong;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSongs(Lcom/google/android/projection/proto/Protos$MediaSong;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->ensureSongsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSongsBuilder()Lcom/google/android/projection/proto/Protos$MediaSong$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getSongsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSong;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSong;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaSong$Builder;

    return-object v0
.end method

.method public addSongsBuilder(I)Lcom/google/android/projection/proto/Protos$MediaSong$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getSongsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaSong;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaSong;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSong$Builder;

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$MediaListNode;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaListNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaListNode;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaListNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaListNode;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$MediaListNode;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$MediaListNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$MediaListNode;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->listBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->list_:Lcom/google/android/projection/proto/Protos$MediaList;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$MediaList;

    :goto_0
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219302(Lcom/google/android/projection/proto/Protos$MediaListNode;Lcom/google/android/projection/proto/Protos$MediaList;)Lcom/google/android/projection/proto/Protos$MediaList;

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->start_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219402(Lcom/google/android/projection/proto/Protos$MediaListNode;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_2
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->total_:I

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219502(Lcom/google/android/projection/proto/Protos$MediaListNode;I)I

    or-int/lit8 v2, v2, 0x4

    :cond_3
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    :cond_4
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219602(Lcom/google/android/projection/proto/Protos$MediaListNode;Ljava/util/List;)Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219702(Lcom/google/android/projection/proto/Protos$MediaListNode;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaListNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaListNode;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->listBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->list_:Lcom/google/android/projection/proto/Protos$MediaList;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->start_:I

    and-int/lit8 v0, v0, -0x3

    iput v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->total_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clear()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clear()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clear()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clear()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearList()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->listBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->list_:Lcom/google/android/projection/proto/Protos$MediaList;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearSongs()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearStart()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->start_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTotal()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->total_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->clone()Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaListNode;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaListNode;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaListNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaListNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$MediaListNode;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$218700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getList()Lcom/google/android/projection/proto/Protos$MediaList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->listBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->list_:Lcom/google/android/projection/proto/Protos$MediaList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaList;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaList;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaList;

    return-object v0
.end method

.method public getListBuilder()Lcom/google/android/projection/proto/Protos$MediaList$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getListFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaList$Builder;

    return-object v0
.end method

.method public getListOrBuilder()Lcom/google/android/projection/proto/Protos$MediaListOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->listBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$MediaListOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->list_:Lcom/google/android/projection/proto/Protos$MediaList;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaList;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaList;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSongs(I)Lcom/google/android/projection/proto/Protos$MediaSong;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSong;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getSongsBuilder(I)Lcom/google/android/projection/proto/Protos$MediaSong$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getSongsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSong$Builder;

    return-object p1
.end method

.method public getSongsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$MediaSong$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getSongsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSongsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getSongsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$MediaSong;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSongsOrBuilder(I)Lcom/google/android/projection/proto/Protos$MediaSongOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaSongOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getSongsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$MediaSongOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->start_:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->total_:I

    return v0
.end method

.method public hasList()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStart()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTotal()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$218800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$MediaListNode;

    const-class v2, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->hasList()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getList()Lcom/google/android/projection/proto/Protos$MediaList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaList;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getSongsCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getSongs(I)Lcom/google/android/projection/proto/Protos$MediaSong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$MediaSong;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$MediaListNode;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaListNode;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaListNode;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->hasList()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->getList()Lcom/google/android/projection/proto/Protos$MediaList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeList(Lcom/google/android/projection/proto/Protos$MediaList;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->setStart(I)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->hasTotal()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->getTotal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->setTotal(I)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    :cond_3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219600(Lcom/google/android/projection/proto/Protos$MediaListNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219600(Lcom/google/android/projection/proto/Protos$MediaListNode;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->ensureSongsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219600(Lcom/google/android/projection/proto/Protos$MediaListNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219600(Lcom/google/android/projection/proto/Protos$MediaListNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219600(Lcom/google/android/projection/proto/Protos$MediaListNode;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219800()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->getSongsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219600(Lcom/google/android/projection/proto/Protos$MediaListNode;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_8
    :goto_1
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MediaListNode;->access$219900(Lcom/google/android/projection/proto/Protos$MediaListNode;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$MediaListNode;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaListNode;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaListNode;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$MediaListNode;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaListNode;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$MediaListNode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaListNode;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaListNode;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeList(Lcom/google/android/projection/proto/Protos$MediaList;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->listBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->list_:Lcom/google/android/projection/proto/Protos$MediaList;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$MediaList;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$MediaList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->list_:Lcom/google/android/projection/proto/Protos$MediaList;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$MediaList;->newBuilder(Lcom/google/android/projection/proto/Protos$MediaList;)Lcom/google/android/projection/proto/Protos$MediaList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$MediaList$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$MediaList;)Lcom/google/android/projection/proto/Protos$MediaList$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaList$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$MediaList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->list_:Lcom/google/android/projection/proto/Protos$MediaList;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeSongs(I)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->ensureSongsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setList(Lcom/google/android/projection/proto/Protos$MediaList$Builder;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->listBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaList$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaList;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->list_:Lcom/google/android/projection/proto/Protos$MediaList;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    return-object p0
.end method

.method public setList(Lcom/google/android/projection/proto/Protos$MediaList;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->listBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->list_:Lcom/google/android/projection/proto/Protos$MediaList;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSongs(ILcom/google/android/projection/proto/Protos$MediaSong$Builder;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->ensureSongsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$MediaSong$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaSong;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$MediaSong$Builder;->build()Lcom/google/android/projection/proto/Protos$MediaSong;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSongs(ILcom/google/android/projection/proto/Protos$MediaSong;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->ensureSongsIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->songs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setStart(I)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->start_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTotal(I)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->total_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$MediaListNode$Builder;

    move-result-object p1

    return-object p1
.end method
