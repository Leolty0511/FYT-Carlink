.class public abstract Landroid/media/videoeditor/Effect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mDurationMs:J

.field private final mMediaItem:Landroid/media/videoeditor/MediaItem;

.field public mStartTimeMs:J

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    .line 3
    iput-object v0, p0, Landroid/media/videoeditor/Effect;->mUniqueId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    .line 5
    iput-wide v0, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    cmp-long v0, p5, v0

    if-ltz v0, :cond_1

    add-long v0, p3, p5

    .line 7
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 8
    iput-object p1, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    .line 9
    iput-object p2, p0, Landroid/media/videoeditor/Effect;->mUniqueId:Ljava/lang/String;

    .line 10
    iput-wide p3, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    .line 11
    iput-wide p5, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid start time and duration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid start time Or/And Duration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
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
    instance-of v0, p1, Landroid/media/videoeditor/Effect;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mUniqueId:Ljava/lang/String;

    check-cast p1, Landroid/media/videoeditor/Effect;

    iget-object p1, p1, Landroid/media/videoeditor/Effect;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem()Landroid/media/videoeditor/MediaItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mUniqueId:Ljava/lang/String;

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
    iget-wide v0, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    add-long/2addr v0, p1

    iget-object v2, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iget-wide v5, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    .line 4
    iput-wide p1, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    .line 5
    iget-object v2, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    iget-wide v7, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

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
    iget-wide v0, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    add-long/2addr v0, p1

    iget-object v2, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iget-wide v3, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    .line 4
    iput-wide p1, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    .line 5
    iget-object v2, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    iget-wide v9, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

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
    iget-object v2, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iget-wide v3, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    .line 4
    iget-wide v5, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    .line 5
    iput-wide p1, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    .line 6
    iput-wide p3, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    .line 7
    iget-object v2, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

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
