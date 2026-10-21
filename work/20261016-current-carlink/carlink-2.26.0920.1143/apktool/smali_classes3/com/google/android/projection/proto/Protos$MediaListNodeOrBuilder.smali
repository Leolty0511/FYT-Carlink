.class public interface abstract Lcom/google/android/projection/proto/Protos$MediaListNodeOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaListNodeOrBuilder"
.end annotation


# virtual methods
.method public abstract getList()Lcom/google/android/projection/proto/Protos$MediaList;
.end method

.method public abstract getListOrBuilder()Lcom/google/android/projection/proto/Protos$MediaListOrBuilder;
.end method

.method public abstract getSongs(I)Lcom/google/android/projection/proto/Protos$MediaSong;
.end method

.method public abstract getSongsCount()I
.end method

.method public abstract getSongsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$MediaSong;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsOrBuilder(I)Lcom/google/android/projection/proto/Protos$MediaSongOrBuilder;
.end method

.method public abstract getSongsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$MediaSongOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStart()I
.end method

.method public abstract getTotal()I
.end method

.method public abstract hasList()Z
.end method

.method public abstract hasStart()Z
.end method

.method public abstract hasTotal()Z
.end method
