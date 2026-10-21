.class public abstract Landroid/media/videoeditor/Overlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mDurationMs:J

.field private final mMediaItem:Landroid/media/videoeditor/MediaItem;

.field public mStartTimeMs:J

.field private final mUniqueId:Ljava/lang/String;

.field private final mUserAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/Overlay;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    cmp-long v0, p5, v0

    if-ltz v0, :cond_1

    add-long v0, p3, p5

    .line 3
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 4
    iput-object p1, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    .line 5
    iput-object p2, p0, Landroid/media/videoeditor/Overlay;->mUniqueId:Ljava/lang/String;

    .line 6
    iput-wide p3, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    .line 7
    iput-wide p5, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/media/videoeditor/Overlay;->mUserAttributes:Ljava/util/Map;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid start time and duration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid start time and/OR duration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Media item cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/media/videoeditor/Overlay;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mUniqueId:Ljava/lang/String;

    check-cast p1, Landroid/media/videoeditor/Overlay;

    iget-object p1, p1, Landroid/media/videoeditor/Overlay;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem()Landroid/media/videoeditor/MediaItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    return-wide v0
.end method

.method public getUserAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mUserAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDuration(J)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    add-long/2addr v0, p1

    iget-object v2, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iget-wide v5, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    .line 4
    iput-wide p1, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    .line 5
    iget-object v2, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    iget-wide v7, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    move-wide v3, v7

    move-wide v9, p1

    invoke-virtual/range {v2 .. v10}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJJJ)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Duration is too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid duration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStartTime(J)V
    .locals 11

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    add-long/2addr v0, p1

    iget-object v2, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iget-wide v3, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    .line 4
    iput-wide p1, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    .line 5
    iget-object v2, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    iget-wide v9, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    move-wide v5, v9

    move-wide v7, p1

    invoke-virtual/range {v2 .. v10}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJJJ)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Start time is too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStartTimeAndDuration(JJ)V
    .locals 11

    add-long v0, p1, p3

    .line 1
    iget-object v2, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iget-wide v3, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    .line 4
    iget-wide v5, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    .line 5
    iput-wide p1, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    .line 6
    iput-wide p3, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    .line 7
    iget-object v2, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    move-wide v7, p1

    move-wide v9, p3

    invoke-virtual/range {v2 .. v10}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJJJ)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid start time or duration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
