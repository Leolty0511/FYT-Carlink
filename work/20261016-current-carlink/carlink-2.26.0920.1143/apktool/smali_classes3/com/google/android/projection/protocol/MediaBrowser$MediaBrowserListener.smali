.class public interface abstract Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaBrowserListener"
.end annotation


# virtual methods
.method public abstract onMediaListNode(Lcom/google/android/projection/protocol/MediaBrowser$MediaList;II[Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;)V
.end method

.method public abstract onMediaRootNode(Ljava/lang/String;[Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;)V
.end method

.method public abstract onMediaSongNode(Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;[BI)V
.end method

.method public abstract onMediaSourceNode(Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;II[Lcom/google/android/projection/protocol/MediaBrowser$MediaList;)V
.end method
