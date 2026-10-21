.class Landroid/media/videoeditor/MediaArtistNativeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClips;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioEffect;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionBehaviour;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioTransition;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$SlideDirection;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoTransition;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoEffect;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFrameRate;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFrameSize;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFormat;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Result;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$MediaRendering;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$FileType;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Bitrate;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSamplingFrequency;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioFormat;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Version;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$OnProgressUpdateListener;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK_PCM_FILE:Ljava/lang/String; = "AudioPcm.pcm"

.field private static final MAX_THUMBNAIL_PERMITTED:I = 0x8

.field public static final PROCESSING_AUDIO_PCM:I = 0x1

.field public static final PROCESSING_EXPORT:I = 0x14

.field public static final PROCESSING_INTERMEDIATE1:I = 0xb

.field public static final PROCESSING_INTERMEDIATE2:I = 0xc

.field public static final PROCESSING_INTERMEDIATE3:I = 0xd

.field public static final PROCESSING_KENBURNS:I = 0x3

.field public static final PROCESSING_NONE:I = 0x0

.field public static final PROCESSING_TRANSITION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaArtistNativeHelper"

.field public static final TASK_ENCODING:I = 0x2

.field public static final TASK_LOADING_SETTINGS:I = 0x1

.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

.field private mAudioTrack:Landroid/media/videoeditor/AudioTrack;

.field private mAudioTrackPCMFilePath:Ljava/lang/String;

.field private mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

.field private mErrorFlagSet:Z

.field private mExportAudioCodec:I

.field private mExportFilename:Ljava/lang/String;

.field private mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

.field private mExportVideoCodec:I

.field private mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

.field private mInvalidatePreviewArray:Z

.field private mIsFirstProgress:Z

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mManualEditContext:I

.field private mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

.field private mOutputFilename:Ljava/lang/String;

.field private mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mPreviewProgress:J

.field private mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

.field private mProcessingObject:Ljava/lang/Object;

.field private mProcessingState:I

.field private mProgressToApp:I

.field private final mProjectPath:Ljava/lang/String;

.field private mRegenerateAudio:Z

.field private mRenderPreviewOverlayFile:Ljava/lang/String;

.field private mRenderPreviewRenderingMode:I

.field private mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mTotalClips:I

.field private final mVideoEditor:Landroid/media/videoeditor/VideoEditor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "videoeditor_jni"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Landroid/media/videoeditor/VideoEditor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    .line 3
    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 4
    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    .line 6
    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    .line 7
    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    .line 9
    iput v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportAudioCodec:I

    .line 10
    iput v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 11
    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    .line 12
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 13
    iput-object p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 14
    iget-object p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    if-nez p3, :cond_0

    .line 15
    new-instance p3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {p3}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    iput-object p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .line 16
    :cond_0
    iput-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    const-string p2, "null"

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->_init(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    return-void

    .line 19
    :cond_1
    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "video editor object is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native _init(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static synthetic access$000()Landroid/graphics/Paint;
    .locals 1

    .line 1
    sget-object v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private adjustMediaItemBoundary(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;Landroid/media/videoeditor/MediaItem;)V
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 2
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 3
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p3, v0

    iput p3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 5
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p3, v0

    iput p3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 7
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int p3, v0

    iput p3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 8
    :cond_2
    :goto_0
    iget p3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int v0, p3, p1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    .line 9
    iget v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v0, :cond_3

    sub-int v0, p3, p1

    .line 10
    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    .line 11
    :cond_3
    iget v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v0, :cond_4

    sub-int/2addr p3, p1

    .line 12
    iput p3, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    :cond_4
    return-void
.end method

.method private adjustVolume(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .locals 1

    .line 1
    instance-of p2, p1, Landroid/media/videoeditor/MediaVideoItem;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2
    check-cast p1, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaVideoItem;->isMuted()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object p2, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object p2, p2, p3

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaVideoItem;->getVolume()I

    move-result p1

    iput p1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object p1, p1, p3

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    goto :goto_0

    .line 5
    :cond_1
    instance-of p1, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object p1, p1, p3

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    :cond_2
    :goto_0
    return-void
.end method

.method private checkOddSizeImage(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .locals 2

    .line 1
    instance-of p1, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object p2, p1, p3

    iget p2, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 3
    aget-object v0, p1, p3

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    .line 4
    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 5
    :cond_0
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 6
    :cond_1
    aget-object v1, p1, p3

    iput p2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 7
    aget-object p1, p1, p3

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    :cond_2
    return-void
.end method

.method private findVideoBitrate(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const p1, 0x7a1200

    return p1

    :pswitch_0
    const p1, 0x4c4b40

    return p1

    :pswitch_1
    const p1, 0x1e8480

    return p1

    :pswitch_2
    const p1, 0x5dc00

    return p1

    :pswitch_3
    const p1, 0x1f400

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private findVideoResolution(II)I
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/16 v5, 0x2d0

    const/16 v6, 0x1e0

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_5

    const/4 v7, 0x3

    if-eq p1, v7, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x90

    if-ne p2, p1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/16 p1, 0x120

    if-ne p2, p1, :cond_a

    move v0, v1

    goto :goto_1

    :cond_2
    if-ne p2, v6, :cond_a

    const/4 v0, 0x6

    goto :goto_1

    :cond_3
    if-ne p2, v6, :cond_4

    goto :goto_1

    :cond_4
    if-ne p2, v5, :cond_a

    const/16 v0, 0xc

    goto :goto_1

    :cond_5
    if-ne p2, v6, :cond_6

    const/16 v0, 0x9

    goto :goto_1

    :cond_6
    if-ne p2, v5, :cond_7

    const/16 v0, 0xa

    goto :goto_1

    :cond_7
    const/16 p1, 0x438

    if-ne p2, p1, :cond_a

    const/16 v0, 0xd

    goto :goto_1

    :cond_8
    if-ne p2, v6, :cond_9

    const/4 v0, 0x7

    goto :goto_1

    :cond_9
    if-ne p2, v5, :cond_a

    const/16 v0, 0xb

    goto :goto_1

    :cond_a
    :goto_0
    move v0, v4

    :goto_1
    if-ne v0, v4, :cond_b

    .line 1
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result p1

    invoke-static {p1}, Landroid/media/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object p1

    .line 2
    array-length p2, p1

    sub-int/2addr p2, v3

    aget-object p1, p1, p2

    .line 3
    iget-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {p2}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v0

    :cond_b
    return v0
.end method

.method private generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->generate()V

    .line 3
    :cond_0
    iget-object v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    aput-object v1, v0, p4

    .line 4
    iget-object v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v0, v0, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 5
    iget-object v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v0, p4

    const/4 v2, 0x0

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 6
    aget-object v1, v0, p4

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 7
    aget-object v0, v0, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 8
    iget-object p2, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object p2, p2, p4

    const/4 v0, 0x2

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 9
    :try_start_0
    iget-object p2, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v0

    aput-object v0, p2, p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iget-object p2, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v0, p2, p4

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->Id:Ljava/lang/String;

    .line 11
    aget-object v0, p2, p4

    const/16 v1, 0x64

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    .line 12
    aget-object p2, p2, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    .line 13
    iget-object p2, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v0, p2, p4

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v0, :cond_1

    .line 14
    aget-object p2, p2, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    .line 15
    :cond_1
    iget-object p2, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object p3, p2, p4

    iget p3, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz p3, :cond_2

    .line 16
    aget-object p2, p2, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide p3

    long-to-int p1, p3

    iput p1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    :cond_2
    return-void

    .line 17
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported file or file not found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getEffectColorType(Landroid/media/videoeditor/EffectColor;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x10a

    goto :goto_0

    :cond_1
    const/16 p1, 0x105

    goto :goto_0

    :cond_2
    const/16 p1, 0x104

    goto :goto_0

    :cond_3
    const/16 p1, 0x10c

    goto :goto_0

    .line 2
    :cond_4
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v0

    const v1, 0xff00

    if-ne v0, v1, :cond_5

    const/16 p1, 0x103

    goto :goto_0

    .line 3
    :cond_5
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v0

    const v1, 0xff66cc

    if-ne v0, v1, :cond_6

    const/16 p1, 0x102

    goto :goto_0

    .line 4
    :cond_6
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result p1

    const v0, 0x7f7f7f

    if-ne p1, v0, :cond_7

    const/16 p1, 0x101

    goto :goto_0

    :cond_7
    const/16 p1, 0x10b

    :goto_0
    return p1
.end method

.method private getTotalEffects(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 4
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 5
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 6
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Effect;

    .line 9
    instance-of v2, v2, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getTransitionResolution(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1
    instance-of v1, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v1, :cond_1

    .line 4
    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 5
    :goto_0
    instance-of v1, p2, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v0

    goto :goto_1

    .line 7
    :cond_2
    instance-of v1, p2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v1, :cond_3

    .line 8
    check-cast p2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    :cond_3
    :goto_1
    if-le p1, v0, :cond_4

    .line 9
    iget-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {p2}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result p2

    invoke-direct {p0, p2, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v0

    goto :goto_4

    .line 10
    :cond_4
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result p1

    invoke-direct {p0, p1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v0

    goto :goto_4

    :cond_5
    if-nez p1, :cond_8

    if-eqz p2, :cond_8

    .line 11
    instance-of p1, p2, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v0

    goto :goto_2

    .line 13
    :cond_6
    instance-of p1, p2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz p1, :cond_7

    .line 14
    check-cast p2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    .line 15
    :cond_7
    :goto_2
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result p1

    invoke-direct {p0, p1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v0

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_b

    if-nez p2, :cond_b

    .line 16
    instance-of p2, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz p2, :cond_9

    .line 17
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v0

    goto :goto_3

    .line 18
    :cond_9
    instance-of p2, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz p2, :cond_a

    .line 19
    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    .line 20
    :cond_a
    :goto_3
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result p1

    invoke-direct {p0, p1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v0

    :cond_b
    :goto_4
    return v0
.end method

.method private static native getVersion()Landroid/media/videoeditor/MediaArtistNativeHelper$Version;
.end method

.method private lock()V
    .locals 4

    const-string v0, "MediaArtistNativeHelper"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "lock: grabbing semaphore"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    :cond_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "lock: grabbed semaphore"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private native nativeClearSurface(Landroid/view/Surface;)V
.end method

.method private native nativeGenerateAudioGraph(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method private native nativeGenerateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
.end method

.method private native nativeGenerateRawAudio(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetPixels(Ljava/lang/String;[IIIJ)I
.end method

.method private native nativeGetPixelsList(Ljava/lang/String;[IIIIJJ[ILandroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;)I
.end method

.method private native nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V
.end method

.method private native nativeRenderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;IIIIJ)I
.end method

.method private native nativeRenderPreviewFrame(Landroid/view/Surface;JII)I
.end method

.method private native nativeStartPreview(Landroid/view/Surface;JJIZ)V
.end method

.method private native nativeStopPreview()I
.end method

.method private onAudioGraphExtractProgressUpdate(IZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    if-eqz p2, :cond_0

    if-lez p1, :cond_0

    .line 2
    invoke-interface {p2, p1}, Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;->onProgress(I)V

    :cond_0
    return-void
.end method

.method private onPreviewProgressUpdate(IZZLjava/lang/String;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    if-eqz v0, :cond_6

    .line 2
    iget-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onStart(Landroid/media/videoeditor/VideoEditor;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    :cond_0
    if-eqz p3, :cond_2

    .line 5
    new-instance p3, Landroid/media/videoeditor/VideoEditor$OverlayData;

    invoke-direct {p3}, Landroid/media/videoeditor/VideoEditor$OverlayData;-><init>()V

    if-eqz p4, :cond_1

    .line 6
    invoke-static {p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p3, p4, p5}, Landroid/media/videoeditor/VideoEditor$OverlayData;->set(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p3}, Landroid/media/videoeditor/VideoEditor$OverlayData;->setClear()V

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-eqz p1, :cond_3

    int-to-long p4, p1

    .line 8
    iput-wide p4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgress:J

    :cond_3
    if-eqz p2, :cond_4

    .line 9
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {p1, p2}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onStop(Landroid/media/videoeditor/VideoEditor;)V

    goto :goto_1

    :cond_4
    if-eqz p6, :cond_5

    .line 10
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {p1, p2, p6}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onError(Landroid/media/videoeditor/VideoEditor;I)V

    goto :goto_1

    .line 11
    :cond_5
    iget-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object p4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    int-to-long p5, p1

    invoke-interface {p2, p4, p5, p6, p3}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onProgress(Landroid/media/videoeditor/VideoEditor;JLandroid/media/videoeditor/VideoEditor$OverlayData;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private onProgressUpdate(II)V
    .locals 4

    .line 1
    iget p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    if-eqz p1, :cond_a

    .line 3
    iget v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-ge v0, p2, :cond_a

    .line 4
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p2}, Landroid/media/videoeditor/VideoEditor$ExportProgressListener;->onProgress(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;I)V

    .line 5
    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    packed-switch p1, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERROR unexpected State="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaArtistNativeHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    if-nez p2, :cond_2

    .line 7
    iget p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz p1, :cond_5

    .line 8
    :cond_2
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x32

    goto :goto_2

    :pswitch_1
    if-nez p2, :cond_3

    .line 9
    iget p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz p1, :cond_5

    .line 10
    :cond_3
    div-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x19

    goto :goto_2

    :pswitch_2
    if-nez p2, :cond_4

    .line 11
    iget p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz p1, :cond_4

    .line 12
    iput v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    :cond_4
    if-nez p2, :cond_6

    .line 13
    iget p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move p2, v3

    goto :goto_2

    .line 14
    :cond_6
    :goto_1
    div-int/lit8 p2, p2, 0x4

    .line 15
    :cond_7
    :goto_2
    iget p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eq p1, p2, :cond_8

    if-eqz p2, :cond_8

    .line 16
    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 17
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    if-eqz p1, :cond_8

    .line 18
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-interface {p1, v0, v2, p2}, Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;->onProgress(Ljava/lang/Object;II)V

    .line 19
    :cond_8
    iget p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-nez p1, :cond_a

    .line 20
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    if-eqz p1, :cond_9

    .line 21
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-interface {p1, v0, v2, p2}, Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;->onProgress(Ljava/lang/Object;II)V

    .line 22
    :cond_9
    iput v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    :cond_a
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private populateBackgroundMusicProperties(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/videoeditor/AudioTrack;

    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    goto :goto_0

    .line 3
    :cond_0
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    .line 4
    :goto_0
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    if-eqz p1, :cond_2

    .line 5
    new-instance p1, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p1}, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;-><init>()V

    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 6
    new-instance p1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-direct {p1}, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;-><init>()V

    .line 7
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-object v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pFile:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->Id:Ljava/lang/String;

    .line 9
    :try_start_0
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-boolean v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->bRemoveOriginal:Z

    .line 11
    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->channels:I

    .line 12
    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->Fs:I

    .line 13
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v3

    iput-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->loop:Z

    .line 14
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ExtendedFs:I

    .line 15
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pFile:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->startMs:J

    .line 17
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->beginCutTime:J

    .line 18
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->endCutTime:J

    .line 19
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->volume:I

    goto :goto_1

    .line 21
    :cond_1
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->volume:I

    .line 22
    :goto_1
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->fileType:I

    .line 23
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ducking_lowVolume:I

    .line 24
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ducking_threshold:I

    .line 25
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v3

    iput-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->bInDucking_enable:Z

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "AudioPcm.pcm"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .line 27
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-object v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pcmFilePath:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;-><init>()V

    iput-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 29
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    iput-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->file:Ljava/lang/String;

    .line 30
    iget p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    iput p1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->fileType:I

    .line 31
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->insertionTime:J

    .line 32
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->volumePercent:I

    .line 33
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->beginLoop:J

    .line 34
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->endLoop:J

    .line 35
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v0

    iput-boolean v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->enableDucking:Z

    .line 36
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->duckingThreshold:I

    .line 37
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->lowVolume:I

    .line 38
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v0

    iput-boolean v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->isLooping:Z

    .line 39
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v0, 0x64

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->primaryTrackVolume:I

    .line 40
    iput v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 41
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    goto :goto_2

    .line 42
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported file or file not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_2
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 44
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput-object v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 45
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private populateEffects(Landroid/media/videoeditor/MediaItem;[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;IIII)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    int-to-long v0, p4

    .line 2
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object p4

    invoke-virtual {p4}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int p4, v0

    int-to-long v0, p5

    .line 3
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object p5

    invoke-virtual {p5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    int-to-long v0, p5

    .line 5
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object p5

    invoke-virtual {p5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    :goto_0
    sub-long/2addr v0, v2

    long-to-int p5, v0

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    int-to-long v0, p4

    .line 7
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object p4

    invoke-virtual {p4}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int p4, v0

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Overlay;

    .line 11
    check-cast v1, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {p0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getOverlaySettings(Landroid/media/videoeditor/OverlayFrame;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v1

    aput-object v1, p2, p3

    .line 12
    aget-object v1, p2, p3

    invoke-virtual {p0, v1, p4, p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    .line 13
    aget-object v1, p2, p3

    iget v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/2addr v2, p6

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 14
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .line 15
    instance-of v1, v0, Landroid/media/videoeditor/EffectColor;

    if-eqz v1, :cond_4

    .line 16
    check-cast v0, Landroid/media/videoeditor/EffectColor;

    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getEffectSettings(Landroid/media/videoeditor/EffectColor;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v0

    aput-object v0, p2, p3

    .line 17
    aget-object v0, p2, p3

    invoke-virtual {p0, v0, p4, p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    .line 18
    aget-object v0, p2, p3

    iget v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/2addr v1, p6

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    return p3
.end method

.method private populateMediaItemProperties(Landroid/media/videoeditor/MediaItem;II)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    aput-object v1, v0, p2

    .line 2
    instance-of v0, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object v1, p1

    check-cast v1, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaVideoItem;->getVideoClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v2

    aput-object v2, v0, p2

    .line 4
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v0

    if-le v0, p3, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result p3

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object v1, p1

    check-cast v1, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaImageItem;->getImageClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v2

    aput-object v2, v0, p2

    .line 8
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    if-le v0, p3, :cond_1

    .line 9
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result p3

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v0, p2

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 11
    aget-object v0, v0, p2

    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v0, p1, p2

    aget-object p1, p1, p2

    iget-object p1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    iput-object p1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    :cond_2
    return p3
.end method

.method private previewFrameEditInfo(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    .line 2
    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    return-void
.end method

.method private native release()V
.end method

.method private native stopEncoding()V
.end method

.method private unlock()V
    .locals 2

    const-string v0, "MediaArtistNativeHelper"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unlock: releasing semaphore"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method public GetClosestVideoFrameRate(I)I
    .locals 3

    const/4 v0, 0x7

    const/16 v1, 0x19

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x14

    if-lt p1, v1, :cond_1

    const/4 p1, 0x6

    return p1

    :cond_1
    const/16 v1, 0xf

    const/4 v2, 0x5

    if-lt p1, v1, :cond_2

    return v2

    :cond_2
    const/16 v1, 0xc

    if-lt p1, v1, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const/16 v1, 0xa

    if-lt p1, v1, :cond_4

    const/4 p1, 0x3

    return p1

    :cond_4
    if-lt p1, v0, :cond_5

    const/4 p1, 0x2

    return p1

    :cond_5
    if-lt p1, v2, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, -0x1

    return p1
.end method

.method public adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    const/4 v1, 0x0

    if-gt v0, p3, :cond_5

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int v3, v0, v2

    if-gt v3, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ge v0, p2, :cond_1

    add-int v3, v0, v2

    if-le v3, p2, :cond_1

    add-int v3, v0, v2

    if-gt v3, p3, :cond_1

    sub-int/2addr p2, v0

    sub-int/2addr v2, p2

    .line 2
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 3
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    return-void

    :cond_1
    if-lt v0, p2, :cond_2

    add-int v3, v0, v2

    if-gt v3, p3, :cond_2

    sub-int/2addr v0, p2

    .line 4
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 5
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    return-void

    :cond_2
    if-lt v0, p2, :cond_3

    add-int v3, v0, v2

    if-le v3, p3, :cond_3

    sub-int p2, v0, p2

    sub-int/2addr p3, v0

    .line 6
    iput p2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 7
    iput p3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    return-void

    :cond_3
    if-ge v0, p2, :cond_4

    add-int/2addr v0, v2

    if-le v0, p3, :cond_4

    sub-int/2addr p3, p2

    .line 8
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 9
    iput p3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    :cond_4
    return-void

    .line 10
    :cond_5
    :goto_0
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 11
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    return-void
.end method

.method public clearPreviewSurface(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeClearSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public doPreview(Landroid/view/Surface;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    .locals 11

    move-object v9, p0

    const-string v10, "MediaArtistNativeHelper"

    move-wide v3, p2

    .line 1
    iput-wide v3, v9, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgress:J

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, v9, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    move-object/from16 v0, p8

    .line 3
    iput-object v0, v9, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    .line 4
    iget-boolean v0, v9, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v1, v9, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 6
    aget-object v1, v2, v0

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v5, 0x5

    if-ne v1, v5, :cond_0

    .line 7
    aget-object v1, v2, v0

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, v9, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v9, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p0, v1, v0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p7

    move/from16 v8, p6

    .line 9
    invoke-direct/range {v1 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeStartPreview(Landroid/view/Surface;JJIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Runtime exception in nativeStartPreview"

    .line 10
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    throw v0

    :catch_1
    move-exception v0

    const-string v1, "Illegal state exception in nativeStartPreview"

    .line 12
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    throw v0

    :catch_2
    move-exception v0

    const-string v1, "Illegal argument exception in nativeStartPreview"

    .line 14
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    throw v0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generatePreview is in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public export(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/Transition;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Landroid/media/videoeditor/VideoEditor$ExportProgressListener;",
            ")V"
        }
    .end annotation

    const-string p2, "RuntimeException for generateClip"

    const-string v0, "MediaArtistNativeHelper"

    .line 1
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p5, p6, p7, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    .line 3
    iput-object p8, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    .line 4
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->get()Landroid/media/videoeditor/VideoEditorProfile;

    move-result-object p5

    if-eqz p5, :cond_5

    .line 5
    iget p6, p5, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameHeight:I

    .line 6
    iget p5, p5, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameWidth:I

    if-gt p3, p6, :cond_4

    .line 7
    iget p5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    invoke-static {p5}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result p5

    .line 8
    iget p6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    invoke-static {p6}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result p6

    const/4 p7, 0x0

    .line 9
    iput p7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    const p8, 0x17700

    const/16 v2, 0x7d00

    sparse-switch p4, :sswitch_data_0

    .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument Bitrate incorrect"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    const p4, 0x7a1200

    goto :goto_0

    :sswitch_1
    const p4, 0x4c4b40

    goto :goto_0

    :sswitch_2
    const p4, 0x1e8480

    goto :goto_0

    :sswitch_3
    const p4, 0xc3500

    goto :goto_0

    :sswitch_4
    const p4, 0x7d000

    goto :goto_0

    :sswitch_5
    const p4, 0x5dc00

    goto :goto_0

    :sswitch_6
    const p4, 0x3e800

    goto :goto_0

    :sswitch_7
    const p4, 0x2ee00

    goto :goto_0

    :sswitch_8
    const p4, 0x1f400

    goto :goto_0

    :sswitch_9
    move p4, p8

    goto :goto_0

    :sswitch_a
    const p4, 0xfa00

    goto :goto_0

    :sswitch_b
    const p4, 0xbb80

    goto :goto_0

    :sswitch_c
    move p4, v2

    .line 11
    :goto_0
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x7

    iput v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 12
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    iput-object p1, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result p1

    .line 14
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {p0, p1, p3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result p1

    iput p1, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 15
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    iput p3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 16
    iget p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportAudioCodec:I

    iput p3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 17
    iput p5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    .line 18
    iput p6, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    .line 19
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 20
    iput p7, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    const/4 p3, 0x2

    .line 21
    iput p3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 22
    iput p4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 23
    iput p8, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 24
    iget p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 p3, p3, -0x1

    new-array p3, p3, [Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iput-object p3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    move p1, p7

    .line 25
    :goto_1
    iget p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 p3, p3, -0x1

    if-ge p1, p3, :cond_0

    .line 26
    iget-object p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object p3, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    new-instance p4, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    invoke-direct {p4}, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;-><init>()V

    aput-object p4, p3, p1

    .line 27
    iget-object p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object p3, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    aget-object p4, p3, p1

    iput p7, p4, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 28
    aget-object p3, p3, p1

    iput p7, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    move p1, p7

    .line 29
    :goto_2
    iget-object p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object p4, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length p5, p4

    if-ge p1, p5, :cond_2

    .line 30
    aget-object p3, p4, p1

    iget p3, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 p5, 0x5

    if-ne p3, p5, :cond_1

    .line 31
    aget-object p3, p4, p1

    aget-object p4, p4, p1

    iget-object p4, p4, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    iput-object p4, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 32
    :cond_2
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object p4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p0, p3, p1, p4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    const/16 p1, 0x14

    .line 33
    :try_start_0
    iput p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 34
    iput-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 35
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result p1

    .line 36
    iput p7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    .line 37
    iput-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    return-void

    .line 38
    :cond_3
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "generateClip failed with error="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    .line 40
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    throw p1

    :catch_1
    move-exception p1

    const-string p2, "IllegalStateExceptiont for generateClip"

    .line 42
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    throw p1

    :catch_2
    move-exception p1

    const-string p2, "IllegalArgument for generateClip"

    .line 44
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    throw p1

    .line 46
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported export resolution. Supported maximum width:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " height:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " current height:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t get the video editor profile"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x6d60 -> :sswitch_c
        0x9c40 -> :sswitch_b
        0xfa00 -> :sswitch_a
        0x17700 -> :sswitch_9
        0x1f400 -> :sswitch_8
        0x2ee00 -> :sswitch_7
        0x3e800 -> :sswitch_6
        0x5dc00 -> :sswitch_5
        0x7d000 -> :sswitch_4
        0xc3500 -> :sswitch_3
        0x1e8480 -> :sswitch_2
        0x4c4b40 -> :sswitch_1
        0x7a1200 -> :sswitch_0
    .end sparse-switch
.end method

.method public generateAudioGraph(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/media/videoeditor/ExtractAudioWaveformProgressListener;Z)V
    .locals 6

    .line 1
    iput-object p7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    if-eqz p8, :cond_0

    .line 2
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pcm"

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p7, 0x0

    new-array p7, p7, [Ljava/lang/Object;

    invoke-static {p1, p7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    :goto_0
    if-eqz p8, :cond_1

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateRawAudio(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 5
    invoke-direct/range {v0 .. v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateAudioGraph(Ljava/lang/String;Ljava/lang/String;III)I

    if-eqz p8, :cond_2

    .line 6
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .locals 2

    const-string v0, "MediaArtistNativeHelper"

    const/4 v1, -0x1

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "Runtime exception in load settings"

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    const-string p1, "Illegal state exception in load settings"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_2
    const-string p1, "Illegal Argument exception in load settings"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public generateEffectClip(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 2
    iput-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v2, 0x0

    .line 3
    iput-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 4
    iput-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 5
    iget-object p3, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object p3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ClipEffectIntermediate"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".3gp"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 7
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p4, 0x2

    .line 10
    invoke-static {p4}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v2

    .line 11
    invoke-static {p4}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v4

    .line 12
    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    .line 13
    iput v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    .line 14
    instance-of v2, p1, Landroid/media/videoeditor/MediaVideoItem;

    const/4 v4, 0x7

    const/16 v5, 0x7d00

    const v6, 0xfa00

    if-eqz v2, :cond_1

    .line 15
    move-object v2, p1

    check-cast v2, Landroid/media/videoeditor/MediaVideoItem;

    .line 16
    iput p4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 17
    iput p4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 18
    iput v6, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 19
    iput v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 20
    iput p4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 21
    iput v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 22
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v4}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v2

    invoke-direct {p0, v4, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 23
    invoke-direct {p0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v2

    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    goto :goto_0

    .line 24
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    .line 25
    iput v6, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 26
    iput p4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 27
    iput p4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 28
    iput v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 29
    iput p4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 30
    iput v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 31
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v4}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v2

    invoke-direct {p0, v4, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 32
    invoke-direct {p0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v2

    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 33
    :goto_0
    iput-object p3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    if-ne p5, v1, :cond_2

    const/16 p4, 0xb

    .line 34
    iput p4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    goto :goto_1

    :cond_2
    if-ne p5, p4, :cond_3

    const/16 p4, 0xc

    .line 35
    iput p4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 36
    :cond_3
    :goto_1
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 37
    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result p1

    .line 38
    iput v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    if-nez p1, :cond_4

    .line 39
    iput-object p3, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 40
    iput v3, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    return-object p3

    .line 41
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "preview generation cannot be completed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateKenBurnsClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaImageItem;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2
    iput-object v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 3
    iput-object v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ImageClip-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v2, 0x2

    .line 8
    invoke-static {v2}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v3

    .line 9
    invoke-static {v2}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v4

    .line 10
    iput v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    .line 11
    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    .line 12
    iput-object v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    const v3, 0xfa00

    .line 13
    iput v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 14
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 15
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    const/16 v3, 0x7d00

    .line 16
    iput v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 17
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    const/4 v2, 0x7

    .line 18
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 19
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v2}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v2

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 20
    invoke-direct {p0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v2

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    const/4 v2, 0x3

    .line 21
    iput v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 22
    iput-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result p1

    .line 24
    iput v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    if-nez p1, :cond_1

    return-object v0

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "preview generation cannot be completed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateTransitionClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/Transition;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".3gp"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v2

    .line 3
    invoke-static {v1}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v3

    .line 4
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    .line 5
    iput v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    .line 6
    iput-object p2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    const v2, 0xfa00

    .line 7
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 8
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 9
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    const/16 v2, 0x7d00

    .line 10
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 11
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    const/4 v1, 0x7

    .line 12
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 13
    invoke-direct {p0, p3, p4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getTransitionResolution(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)I

    move-result p3

    iput p3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 14
    invoke-direct {p0, p3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result p3

    iput p3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 15
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 16
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_0
    const/16 p3, 0xd

    .line 17
    iput p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 18
    iput-object p5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 19
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result p1

    .line 20
    iput v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    if-nez p1, :cond_1

    return-object p2

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "preview generation cannot be completed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAspectRatio(II)I
    .locals 6

    int-to-double v0, p1

    int-to-double p1, p2

    div-double/2addr v0, p1

    .line 1
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p2, 0x3

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, p2, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x3ffb333333333333L    # 1.7

    cmpl-double p1, v1, v3

    const/4 v3, 0x2

    if-ltz p1, :cond_1

    :cond_0
    move p2, v3

    goto :goto_0

    :cond_1
    const-wide v4, 0x3ff999999999999aL    # 1.6

    cmpl-double p1, v1, v4

    if-ltz p1, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double p1, v1, v4

    if-ltz p1, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double p1, v1, v4

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    const-wide p1, 0x3ff3333333333333L    # 1.2

    cmpl-double p1, v1, p1

    if-ltz p1, :cond_0

    const/4 p2, 0x5

    :goto_0
    return p2
.end method

.method public getAudioCodecType(I)I
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method public getAudioflag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    return v0
.end method

.method public getEffectSettings(Landroid/media/videoeditor/EffectColor;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .locals 4

    .line 1
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 3
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 4
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getEffectColorType(Landroid/media/videoeditor/EffectColor;)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->audioEffectType:I

    .line 6
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startPercent:I

    .line 7
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->durationPercent:I

    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 9
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftX:I

    .line 10
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftY:I

    .line 11
    iput-boolean v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingResize:Z

    .line 12
    iput-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->text:Ljava/lang/String;

    .line 13
    iput-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textRenderingData:Ljava/lang/String;

    .line 14
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferWidth:I

    .line 15
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferHeight:I

    .line 16
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/16 v2, 0xf

    .line 17
    iput v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    goto :goto_0

    .line 18
    :cond_0
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    .line 19
    :goto_0
    iget v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    const/16 v3, 0x10b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10c

    if-ne v2, v3, :cond_2

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result p1

    iput p1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->rgb16InputColor:I

    .line 21
    :cond_2
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingStartPercent:I

    .line 22
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingMiddlePercent:I

    .line 23
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingEndPercent:I

    .line 24
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeInTimePercent:I

    .line 25
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeOutTimePercent:I

    return-object v0
.end method

.method public getFileType(I)I
    .locals 7

    const/16 v0, 0xff

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_7

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_0
    return v0
.end method

.method public getFrameRate(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x1e

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x19

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x14

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xf

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xd

    goto :goto_0

    :pswitch_5
    const/16 p1, 0xa

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x5

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getGeneratePreview()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    return v0
.end method

.method public getMediaItemFileType(I)I
    .locals 5

    const/16 v0, 0xff

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_5

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method public getMediaItemRenderingMode(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public native getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
.end method

.method public getOverlaySettings(Landroid/media/videoeditor/OverlayFrame;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    const/16 v2, 0x106

    .line 4
    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    const/4 v2, 0x0

    .line 5
    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->audioEffectType:I

    .line 6
    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startPercent:I

    .line 7
    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->durationPercent:I

    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 11
    :try_start_0
    iget-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v13, p1

    :try_start_1
    invoke-virtual {v13, v4}, Landroid/media/videoeditor/OverlayFrame;->save(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 v13, p1

    :catch_1
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "getOverlaySettings : File not found"

    .line 12
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object/from16 v13, p1

    .line 14
    :goto_1
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x6

    .line 15
    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x5

    .line 17
    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x4

    .line 19
    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v4, v5, :cond_9

    .line 21
    :goto_2
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    .line 22
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    .line 23
    iget v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    new-array v4, v4, [I

    iput-object v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    const/16 v14, 0xff

    move v15, v2

    move/from16 v16, v15

    move/from16 v17, v14

    .line 24
    :goto_3
    iget v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    if-ge v15, v4, :cond_7

    .line 25
    iget-object v5, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    const/4 v6, 0x0

    iget v10, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    const/4 v8, 0x0

    const/4 v11, 0x1

    move-object v4, v12

    move v7, v10

    move v9, v15

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v6, v2

    move/from16 v4, v16

    move/from16 v5, v17

    .line 26
    :goto_4
    iget v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    if-ge v6, v7, :cond_6

    .line 27
    iget-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    aget v7, v7, v6

    shr-int/lit8 v7, v7, 0x18

    and-int/2addr v7, v14

    int-to-short v7, v7

    if-le v7, v4, :cond_4

    move v4, v7

    :cond_4
    if-ge v7, v5, :cond_5

    move v5, v7

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v4

    move/from16 v17, v5

    goto :goto_3

    :cond_7
    add-int v16, v16, v17

    .line 28
    div-int/lit8 v4, v16, 0x2

    int-to-short v4, v4

    const/16 v5, 0x64

    mul-int/2addr v4, v5

    .line 29
    div-int/lit16 v4, v4, 0x100

    int-to-short v4, v4

    .line 30
    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingEndPercent:I

    .line 31
    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingMiddlePercent:I

    .line 32
    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingStartPercent:I

    .line 33
    iput v5, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeInTimePercent:I

    .line 34
    iput v5, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeOutTimePercent:I

    .line 35
    iput-object v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeWidth()I

    move-result v4

    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    if-nez v4, :cond_8

    .line 37
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    .line 38
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeHeight()I

    move-result v4

    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    if-nez v4, :cond_b

    .line 39
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    goto :goto_5

    .line 40
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bitmap config not supported"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object/from16 v13, p1

    .line 41
    :cond_b
    :goto_5
    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftX:I

    .line 42
    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftY:I

    const/4 v4, 0x1

    .line 43
    iput-boolean v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingResize:Z

    .line 44
    iput-object v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->text:Ljava/lang/String;

    .line 45
    iput-object v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textRenderingData:Ljava/lang/String;

    .line 46
    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferWidth:I

    .line 47
    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferHeight:I

    .line 48
    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    .line 49
    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->rgb16InputColor:I

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    instance-of v2, v2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v2, :cond_d

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedClipHeight()I

    move-result v2

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedClipWidth()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v3

    goto :goto_6

    .line 54
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v2

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v3

    goto :goto_6

    .line 56
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v3

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v2

    .line 58
    :goto_6
    invoke-direct {v0, v3, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingScaledSize:I

    return-object v1
.end method

.method public getPixels(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;
    .locals 15

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/graphics/Bitmap;

    new-array v11, v0, [I

    const/4 v0, 0x0

    aput v0, v11, v0

    .line 1
    new-instance v12, Landroid/media/videoeditor/MediaArtistNativeHelper$1;

    move-object v14, p0

    invoke-direct {v12, p0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$1;-><init>(Landroid/media/videoeditor/MediaArtistNativeHelper;[Landroid/graphics/Bitmap;)V

    const/4 v10, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p4

    move/from16 v13, p6

    invoke-virtual/range {v2 .. v13}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V

    .line 2
    aget-object v0, v1, v0

    return-object v0
.end method

.method public getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V
    .locals 18

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v11, p11

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v13, v2, -0x2

    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v14, v2, -0x2

    mul-int v6, v13, v14

    .line 1
    new-array v15, v6, [I

    .line 2
    invoke-static {v6}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v13, v0, :cond_1

    if-ne v14, v1, :cond_1

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    move v7, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v3

    :goto_1
    if-eqz v7, :cond_2

    .line 3
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    move-object/from16 v16, v5

    const/16 v5, 0x5a

    if-eq v11, v5, :cond_3

    const/16 v5, 0x10e

    if-ne v11, v5, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    if-eqz v2, :cond_6

    move v5, v0

    goto :goto_4

    :cond_6
    move v5, v1

    .line 4
    :goto_4
    new-instance v17, Landroid/media/videoeditor/MediaArtistNativeHelper$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move v2, v3

    move v3, v5

    move-object v5, v15

    move-object/from16 v8, v16

    move v9, v13

    move v10, v14

    move/from16 v11, p11

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Landroid/media/videoeditor/MediaArtistNativeHelper$2;-><init>(Landroid/media/videoeditor/MediaArtistNativeHelper;IILjava/nio/IntBuffer;[IIZLandroid/graphics/Bitmap;IIILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v6, v13

    move v7, v14

    move/from16 v8, p8

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-object/from16 v13, p9

    move-object/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsList(Ljava/lang/String;[IIIIJJ[ILandroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;)I

    if-eqz v16, :cond_7

    .line 5
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    return-void
.end method

.method public getProjectAudioTrackPCMFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSlideSettingsDirection(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public getVideoCodecType(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method public getVideoTransitionBehaviour(I)I
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2
    iput-object v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    .line 3
    iput-object v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 5
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 6
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 7
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    .line 8
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    .line 9
    iput-boolean v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    .line 10
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    .line 11
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    .line 12
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    .line 13
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    .line 14
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    .line 15
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    .line 16
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 17
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rotationDegree:I

    return-void
.end method

.method public invalidatePcmFile()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public nativeHelperGetAspectRatio()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v0

    return v0
.end method

.method public previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/Transition;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    const-string v9, "MediaArtistNativeHelper"

    .line 1
    iget-boolean v0, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-eqz v0, :cond_e

    .line 2
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    iput-object v0, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .line 3
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;-><init>()V

    iput-object v0, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    const/4 v0, 0x0

    .line 4
    iput v0, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Transition;

    .line 7
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_0

    .line 8
    iget v2, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/2addr v2, v12

    iput v2, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getTotalEffects(Ljava/util/List;)I

    move-result v1

    .line 10
    iget-object v2, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v3, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    new-array v4, v3, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v4, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 11
    new-array v1, v1, [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 12
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    new-array v2, v3, [Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object/from16 v1, p4

    .line 13
    iput-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    .line 14
    iput v0, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 15
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v13, v6

    .line 16
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v13, v7, :cond_b

    move-object/from16 v14, p1

    .line 17
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Landroid/media/videoeditor/MediaItem;

    .line 18
    instance-of v7, v15, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v7, :cond_2

    .line 19
    move-object v5, v15

    check-cast v5, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v5}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 p4, v13

    .line 20
    invoke-virtual {v5}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v12

    long-to-int v5, v12

    move v13, v5

    move v12, v6

    goto :goto_3

    :cond_2
    move/from16 p4, v13

    .line 21
    instance-of v7, v15, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v7, :cond_3

    .line 22
    move-object v5, v15

    check-cast v5, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v5}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v5

    long-to-int v6, v5

    move v12, v0

    goto :goto_2

    :cond_3
    move v12, v5

    :goto_2
    move v13, v6

    .line 23
    :goto_3
    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 24
    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_4

    .line 25
    iget-object v6, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v7, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    invoke-direct {v8, v5, v6, v7, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 26
    iget-object v5, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v1

    iget v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    :cond_4
    move v7, v1

    move/from16 v16, v2

    .line 27
    invoke-direct {v8, v15, v7, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateMediaItemProperties(Landroid/media/videoeditor/MediaItem;II)I

    move-result v17

    .line 28
    instance-of v1, v15, Landroid/media/videoeditor/MediaImageItem;

    const-string v2, "Unsupported file or file not found"

    if-eqz v1, :cond_9

    .line 29
    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v1

    move v3, v0

    .line 30
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 31
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    move v1, v0

    :goto_5
    if-eqz v1, :cond_8

    .line 32
    :try_start_0
    move-object v1, v15

    check-cast v1, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 33
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v3, v15

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v1, v7

    goto :goto_6

    .line 34
    :cond_7
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v3, v15

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledImageFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v1, v7

    .line 35
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, v7

    move-object v3, v15

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v3

    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 36
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, v7

    move-object v3, v15

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v3

    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 37
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_8
    :try_start_1
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v3, v15

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledImageFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v1, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, v7

    move-object v2, v15

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v3

    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 40
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, v7

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    goto :goto_6

    .line 41
    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_9
    :try_start_2
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v1, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 43
    :goto_6
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, v7

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->Id:Ljava/lang/String;

    .line 44
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    invoke-direct {v8, v15, v1, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->checkOddSizeImage(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 45
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    invoke-direct {v8, v15, v1, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustVolume(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 46
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, v7

    iget-object v2, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, v7

    invoke-direct {v8, v1, v2, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustMediaItemBoundary(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;Landroid/media/videoeditor/MediaItem;)V

    .line 47
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-object/from16 v1, p0

    move-object v2, v15

    move v5, v12

    move v6, v13

    move/from16 v18, v7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateEffects(Landroid/media/videoeditor/MediaItem;[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;IIII)I

    move-result v4

    .line 48
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, v18

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    add-int v2, v16, v1

    add-int/lit8 v1, v18, 0x1

    .line 49
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    move/from16 v6, p4

    if-ne v6, v3, :cond_a

    .line 50
    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 51
    invoke-virtual {v3}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v15

    cmp-long v7, v15, v10

    if-lez v7, :cond_a

    .line 52
    iget-object v2, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    invoke-direct {v8, v3, v2, v4, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    move/from16 v3, v17

    goto :goto_7

    :cond_a
    add-int/lit8 v3, v6, 0x1

    move v6, v13

    move v13, v3

    move/from16 v3, v17

    move/from16 v19, v12

    move v12, v5

    move/from16 v5, v19

    goto/16 :goto_1

    .line 53
    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_b
    :goto_7
    iget-boolean v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    if-nez v1, :cond_c

    .line 55
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v2}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v2

    invoke-direct {v8, v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    move-object/from16 v1, p3

    .line 56
    invoke-direct {v8, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateBackgroundMusicProperties(Ljava/util/List;)V

    .line 57
    :try_start_3
    iget-object v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {v8, v1, v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 58
    iput-boolean v0, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    .line 59
    iput v0, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    goto :goto_8

    :catch_3
    move-exception v0

    const-string v1, "Runtime exception in nativePopulateSettings"

    .line 60
    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    throw v0

    :catch_4
    move-exception v0

    const-string v1, "Illegal state exception in nativePopulateSettings"

    .line 62
    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    throw v0

    :catch_5
    move-exception v0

    const-string v1, "Illegal argument exception in nativePopulateSettings"

    .line 64
    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    throw v0

    .line 66
    :cond_c
    :goto_8
    iget-boolean v1, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    if-nez v1, :cond_d

    goto :goto_9

    .line 67
    :cond_d
    iput-boolean v0, v8, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "preview generation cannot be completed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_9
    return-void
.end method

.method public releaseNativeHelper()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->release()V

    return-void
.end method

.method public renderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;JII)J
    .locals 11

    const-string v1, "MediaArtistNativeHelper"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide v9, p3

    .line 1
    :try_start_0
    invoke-direct/range {v2 .. v10}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeRenderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;IIIIJ)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v0, "Runtime exception in renderMediaItemPreviewFrame"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    throw v2

    :catch_1
    move-exception v0

    move-object v2, v0

    const-string v0, "Illegal state exception in renderMediaItemPreviewFrame"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    throw v2

    :catch_2
    move-exception v0

    move-object v2, v0

    const-string v0, "Illegal Argument exception in renderMediaItemPreviewFrame"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    throw v2
.end method

.method public renderPreviewFrame(Landroid/view/Surface;JIILandroid/media/videoeditor/VideoEditor$OverlayData;)J
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    const-string v1, "MediaArtistNativeHelper"

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    const-string p2, "Call generate preview first"

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .line 5
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 6
    aget-object v3, v4, v2

    iget v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    .line 7
    aget-object v3, v4, v2

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    .line 9
    iput v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    .line 10
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p0, v3, v0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    .line 11
    invoke-direct/range {p0 .. p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeRenderPreviewFrame(Landroid/view/Surface;JII)I

    move-result p1

    int-to-long p1, p1

    .line 12
    iget-object p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 13
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    iget p4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    invoke-virtual {p6, p3, p4}, Landroid/media/videoeditor/VideoEditor$OverlayData;->set(Landroid/graphics/Bitmap;I)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p6}, Landroid/media/videoeditor/VideoEditor$OverlayData;->setClear()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-wide p1

    :catch_0
    move-exception p1

    const-string p2, "Runtime exception in nativeRenderPreviewFrame"

    .line 15
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    throw p1

    :catch_1
    move-exception p1

    const-string p2, "Illegal state exception in nativeRenderPreviewFrame"

    .line 17
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    throw p1

    :catch_2
    move-exception p1

    const-string p2, "Illegal Argument exception in nativeRenderPreviewFrame"

    .line 19
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    throw p1
.end method

.method public setAudioCodec(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportAudioCodec:I

    return-void
.end method

.method public setAudioflag(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AudioPcm.pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 2
    :cond_0
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    return-void
.end method

.method public setGeneratePreview(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->lock()V

    const/4 v0, 0x1

    .line 2
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p1, "MediaArtistNativeHelper"

    const-string v1, "Runtime exception in renderMediaItemPreviewFrame"

    .line 4
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    :cond_1
    throw p1
.end method

.method public setVideoCodec(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 2

    const-string p1, "MediaArtistNativeHelper"

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stopEncoding()V

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Runtime exception in unload settings"

    .line 3
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    throw v0

    :catch_1
    move-exception v0

    const-string v1, "Illegal state exception in unload settings"

    .line 5
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    throw v0
.end method

.method public stopPreview()J
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeStopPreview()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
