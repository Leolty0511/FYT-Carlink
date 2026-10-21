.class public interface abstract Lcom/google/android/projection/proto/Protos$MediaRootNodeOrBuilder;
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
    name = "MediaRootNodeOrBuilder"
.end annotation


# virtual methods
.method public abstract getMediaSources(I)Lcom/google/android/projection/proto/Protos$MediaSource;
.end method

.method public abstract getMediaSourcesCount()I
.end method

.method public abstract getMediaSourcesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$MediaSource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaSourcesOrBuilder(I)Lcom/google/android/projection/proto/Protos$MediaSourceOrBuilder;
.end method

.method public abstract getMediaSourcesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$MediaSourceOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPathBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasPath()Z
.end method
