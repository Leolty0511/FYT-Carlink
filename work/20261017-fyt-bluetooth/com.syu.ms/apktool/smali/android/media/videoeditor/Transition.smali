.class public abstract Landroid/media/videoeditor/Transition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BEHAVIOR_LINEAR:I = 0x2

.field private static final BEHAVIOR_MAX_VALUE:I = 0x4

.field public static final BEHAVIOR_MIDDLE_FAST:I = 0x4

.field public static final BEHAVIOR_MIDDLE_SLOW:I = 0x3

.field private static final BEHAVIOR_MIN_VALUE:I = 0x0

.field public static final BEHAVIOR_SPEED_DOWN:I = 0x1

.field public static final BEHAVIOR_SPEED_UP:I


# instance fields
.field private final mAfterMediaItem:Landroid/media/videoeditor/MediaItem;

.field private final mBeforeMediaItem:Landroid/media/videoeditor/MediaItem;

.field public final mBehavior:I

.field public mDurationMs:J

.field public mFilename:Ljava/lang/String;

.field public mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/Transition;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p6, :cond_4

    const/4 v0, 0x4

    if-gt p6, v0, :cond_4

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null media items"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/media/videoeditor/Transition;->mUniqueId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Landroid/media/videoeditor/Transition;->mAfterMediaItem:Landroid/media/videoeditor/MediaItem;

    .line 6
    iput-object p3, p0, Landroid/media/videoeditor/Transition;->mBeforeMediaItem:Landroid/media/videoeditor/MediaItem;

    .line 7
    iput-wide p4, p0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    .line 8
    iput p6, p0, Landroid/media/videoeditor/Transition;->mBehavior:I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 10
    invoke-virtual {p0}, Landroid/media/videoeditor/Transition;->getMaximumDuration()J

    move-result-wide v0

    cmp-long p1, p4, v0

    if-gtz p1, :cond_3

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object p1

    iput-object p1, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object p1

    iput-object p1, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    :goto_1
    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The duration is too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid behavior: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/media/videoeditor/Transition;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mUniqueId:Ljava/lang/String;

    check-cast p1, Landroid/media/videoeditor/Transition;

    iget-object p1, p1, Landroid/media/videoeditor/Transition;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public generate()V
    .locals 16

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    .line 3
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 4
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 5
    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    .line 6
    iget-object v5, v6, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v5, :cond_1

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v5

    iput-object v5, v6, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v5

    iput-object v5, v6, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 9
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/Transition;->getTransitionSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getClipSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    .line 11
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getClipSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v1

    .line 12
    iget v10, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v10, v10

    iget-wide v12, v6, Landroid/media/videoeditor/Transition;->mDurationMs:J

    sub-long/2addr v10, v12

    long-to-int v10, v10

    iput v10, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 13
    iget v10, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v10, v10

    add-long/2addr v10, v12

    long-to-int v10, v10

    iput v10, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 14
    invoke-virtual {v6, v3, v0, v9}, Landroid/media/videoeditor/Transition;->isEffectandOverlayOverlapping(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;I)Ljava/util/List;

    move-result-object v10

    .line 15
    invoke-virtual {v6, v4, v1, v7}, Landroid/media/videoeditor/Transition;->isEffectandOverlayOverlapping(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;I)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    .line 16
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 17
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iget v14, v13, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    int-to-long v14, v14

    iget-wide v7, v6, Landroid/media/videoeditor/Transition;->mDurationMs:J

    add-long/2addr v14, v7

    long-to-int v7, v14

    iput v7, v13, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x2

    goto :goto_1

    .line 18
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    new-array v7, v7, [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 19
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_3

    .line 20
    iget-object v12, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    aput-object v13, v12, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 21
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_7

    .line 22
    iget-object v10, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    aput-object v12, v10, v8

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v8, v9

    goto :goto_3

    :cond_4
    const-wide/16 v7, 0x32

    if-nez v3, :cond_6

    if-eqz v4, :cond_6

    .line 23
    invoke-virtual {v4, v0}, Landroid/media/videoeditor/MediaItem;->generateBlankFrame(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    .line 24
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getClipSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v1

    .line 25
    iget-wide v10, v6, Landroid/media/videoeditor/Transition;->mDurationMs:J

    add-long/2addr v7, v10

    long-to-int v7, v7

    iput v7, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 26
    iget v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v7, v7

    add-long/2addr v7, v10

    long-to-int v7, v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    const/4 v7, 0x2

    .line 27
    invoke-virtual {v6, v4, v1, v7}, Landroid/media/videoeditor/Transition;->isEffectandOverlayOverlapping(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;I)Ljava/util/List;

    move-result-object v8

    const/4 v7, 0x0

    .line 28
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_5

    .line 29
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iget v11, v10, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    int-to-long v11, v11

    iget-wide v13, v6, Landroid/media/videoeditor/Transition;->mDurationMs:J

    add-long/2addr v11, v13

    long-to-int v11, v11

    iput v11, v10, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 30
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 31
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_7

    .line 32
    iget-object v11, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    aput-object v12, v11, v10

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v10, v9

    goto :goto_5

    :cond_6
    if-eqz v3, :cond_7

    if-nez v4, :cond_7

    .line 33
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getClipSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    .line 34
    invoke-virtual {v3, v1}, Landroid/media/videoeditor/MediaItem;->generateBlankFrame(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    .line 35
    iget v10, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v10, v10

    iget-wide v12, v6, Landroid/media/videoeditor/Transition;->mDurationMs:J

    sub-long/2addr v10, v12

    long-to-int v10, v10

    iput v10, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    add-long/2addr v12, v7

    long-to-int v7, v12

    .line 36
    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 37
    invoke-virtual {v6, v3, v0, v9}, Landroid/media/videoeditor/Transition;->isEffectandOverlayOverlapping(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;I)Ljava/util/List;

    move-result-object v7

    .line 38
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v8, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 39
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_7

    .line 40
    iget-object v11, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    aput-object v12, v11, v10

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v10, v9

    goto :goto_6

    :cond_7
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 41
    iput-object v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    aput-object v1, v7, v9

    const/4 v0, 0x0

    .line 42
    iput-object v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    new-array v0, v9, [Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 43
    iput-object v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    aput-object v5, v0, v8

    .line 44
    iget-object v0, v6, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v5, v6, Landroid/media/videoeditor/Transition;->mUniqueId:Ljava/lang/String;

    move-object v1, v2

    move-object v2, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateTransitionClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/Transition;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {v6, v0}, Landroid/media/videoeditor/Transition;->setFilename(Ljava/lang/String;)V

    return-void
.end method

.method public getAfterMediaItem()Landroid/media/videoeditor/MediaItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mAfterMediaItem:Landroid/media/videoeditor/MediaItem;

    return-object v0
.end method

.method public getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mBeforeMediaItem:Landroid/media/videoeditor/MediaItem;

    return-object v0
.end method

.method public getBehavior()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/Transition;->mBehavior:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumDuration()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mAfterMediaItem:Landroid/media/videoeditor/MediaItem;

    const-wide/16 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mBeforeMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v3

    div-long/2addr v3, v1

    return-wide v3

    .line 3
    :cond_0
    iget-object v3, p0, Landroid/media/videoeditor/Transition;->mBeforeMediaItem:Landroid/media/videoeditor/MediaItem;

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v3

    div-long/2addr v3, v1

    return-wide v3

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v3

    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mBeforeMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    div-long/2addr v3, v1

    return-wide v3
.end method

.method public getTransitionSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;
    .locals 5

    .line 1
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->duration:I

    .line 3
    instance-of v1, p0, Landroid/media/videoeditor/TransitionAlpha;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 4
    move-object v1, p0

    check-cast v1, Landroid/media/videoeditor/TransitionAlpha;

    const/16 v4, 0x101

    .line 5
    iput v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 6
    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    .line 7
    iget-object v2, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getBehavior()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoTransitionBehaviour(I)I

    move-result v2

    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->transitionBehaviour:I

    .line 8
    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;-><init>()V

    iput-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    .line 9
    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->slideSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;

    .line 10
    invoke-virtual {v1}, Landroid/media/videoeditor/TransitionAlpha;->getPNGMaskFilename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;->file:Ljava/lang/String;

    .line 11
    iget-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    invoke-virtual {v1}, Landroid/media/videoeditor/TransitionAlpha;->getBlendingPercent()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;->blendingPercent:I

    .line 12
    iget-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    invoke-virtual {v1}, Landroid/media/videoeditor/TransitionAlpha;->isInvert()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;->invertRotation:Z

    .line 13
    iget-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    invoke-virtual {v1}, Landroid/media/videoeditor/TransitionAlpha;->getRGBFileWidth()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;->rgbWidth:I

    .line 14
    iget-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    invoke-virtual {v1}, Landroid/media/videoeditor/TransitionAlpha;->getRGBFileHeight()I

    move-result v1

    iput v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;->rgbHeight:I

    goto :goto_0

    .line 15
    :cond_0
    instance-of v1, p0, Landroid/media/videoeditor/TransitionSliding;

    if-eqz v1, :cond_1

    .line 16
    move-object v1, p0

    check-cast v1, Landroid/media/videoeditor/TransitionSliding;

    const/16 v4, 0x102

    .line 17
    iput v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 18
    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    .line 19
    iget-object v2, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getBehavior()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoTransitionBehaviour(I)I

    move-result v2

    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->transitionBehaviour:I

    .line 20
    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    .line 21
    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;-><init>()V

    iput-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->slideSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;

    .line 22
    iget-object v3, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/TransitionSliding;->getDirection()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getSlideSettingsDirection(I)I

    move-result v1

    iput v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;->direction:I

    goto :goto_0

    .line 23
    :cond_1
    instance-of v1, p0, Landroid/media/videoeditor/TransitionCrossfade;

    if-eqz v1, :cond_2

    .line 24
    move-object v1, p0

    check-cast v1, Landroid/media/videoeditor/TransitionCrossfade;

    .line 25
    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 26
    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    .line 27
    iget-object v2, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getBehavior()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoTransitionBehaviour(I)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->transitionBehaviour:I

    .line 28
    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    .line 29
    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->slideSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;

    goto :goto_0

    .line 30
    :cond_2
    instance-of v1, p0, Landroid/media/videoeditor/TransitionFadeBlack;

    if-eqz v1, :cond_3

    .line 31
    move-object v1, p0

    check-cast v1, Landroid/media/videoeditor/TransitionFadeBlack;

    const/16 v4, 0x103

    .line 32
    iput v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 33
    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    .line 34
    iget-object v2, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getBehavior()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoTransitionBehaviour(I)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->transitionBehaviour:I

    .line 35
    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    .line 36
    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->slideSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public isEffectandOverlayOverlapping(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/videoeditor/MediaItem;",
            "Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Overlay;

    .line 4
    iget-object v2, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    check-cast v1, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getOverlaySettings(Landroid/media/videoeditor/OverlayFrame;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v1

    .line 5
    iget-object v2, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v3, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    iget v4, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    .line 6
    iget v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Effect;

    .line 10
    instance-of v2, v1, Landroid/media/videoeditor/EffectColor;

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    check-cast v1, Landroid/media/videoeditor/EffectColor;

    invoke-virtual {v2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getEffectSettings(Landroid/media/videoeditor/EffectColor;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v1

    .line 12
    iget-object v2, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v3, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    iget v4, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    .line 13
    iget v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    if-eqz v2, :cond_2

    .line 14
    instance-of v2, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v2, :cond_3

    .line 15
    iget-object v2, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object v3, p1

    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getFps()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->GetClosestVideoFrameRate(I)I

    move-result v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    .line 16
    :cond_3
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p3
.end method

.method public isGenerated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDuration(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/videoeditor/Transition;->getMaximumDuration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2
    iput-wide p1, p0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    .line 3
    invoke-virtual {p0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 4
    iget-object p1, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The duration is too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    return-void
.end method
