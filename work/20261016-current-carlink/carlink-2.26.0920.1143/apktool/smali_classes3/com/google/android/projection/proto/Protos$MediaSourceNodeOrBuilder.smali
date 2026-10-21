.class public interface abstract Lcom/google/android/projection/proto/Protos$MediaSourceNodeOrBuilder;
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
    name = "MediaSourceNodeOrBuilder"
.end annotation


# virtual methods
.method public abstract getLists(I)Lcom/google/android/projection/proto/Protos$MediaList;
.end method

.method public abstract getListsCount()I
.end method

.method public abstract getListsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$MediaList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListsOrBuilder(I)Lcom/google/android/projection/proto/Protos$MediaListOrBuilder;
.end method

.method public abstract getListsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$MediaListOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSource()Lcom/google/android/projection/proto/Protos$MediaSource;
.end method

.method public abstract getSourceOrBuilder()Lcom/google/android/projection/proto/Protos$MediaSourceOrBuilder;
.end method

.method public abstract getStart()I
.end method

.method public abstract getTotal()I
.end method

.method public abstract hasSource()Z
.end method

.method public abstract hasStart()Z
.end method

.method public abstract hasTotal()Z
.end method
