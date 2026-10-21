.class public Landroid/media/videoeditor/AudioTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAudioBitrate:I

.field private final mAudioChannels:I

.field private final mAudioSamplingFrequency:I

.field private final mAudioType:I

.field private mAudioWaveformFilename:Ljava/lang/String;

.field private mBeginBoundaryTimeMs:J

.field private mDuckedTrackVolume:I

.field private mDuckingThreshold:I

.field private final mDurationMs:J

.field private mEndBoundaryTimeMs:J

.field private final mFilename:Ljava/lang/String;

.field private mIsDuckingEnabled:Z

.field private mLoop:Z

.field private final mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private mMuted:Z

.field private mStartTimeMs:J

.field private mTimelineDurationMs:J

.field private final mUniqueId:Ljava/lang/String;

.field private mVolumePercent:I

.field private mWaveformData:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/media/videoeditor/WaveformData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x64

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 2
    invoke-direct/range {v0 .. v16}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJZIZZIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJZIZZIILjava/lang/String;)V
    .locals 11

    move-object v1, p0

    move-object v0, p1

    move-object v2, p3

    move-wide/from16 v3, p6

    move-object/from16 v5, p16

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    const-wide v7, 0x80000000L

    .line 6
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v6, v7, v9

    if-lez v6, :cond_7

    .line 7
    instance-of v6, v0, Landroid/media/videoeditor/VideoEditorImpl;

    if-eqz v6, :cond_6

    .line 8
    check-cast v0, Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v0}, Landroid/media/videoeditor/VideoEditorImpl;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    iput-object v0, v1, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 9
    :try_start_0
    invoke-virtual {v0, p3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iget v7, v6, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v0, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    if-eq v7, v9, :cond_1

    if-eq v7, v8, :cond_1

    const/4 v10, 0x3

    if-ne v7, v10, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported input file type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    :goto_0
    iget v7, v6, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    invoke-virtual {v0, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v0

    if-eq v0, v9, :cond_3

    if-eq v0, v8, :cond_3

    const/4 v7, 0x5

    if-eq v0, v7, :cond_3

    const/16 v7, 0x8

    if-ne v0, v7, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported Audio Codec Format in Input File"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const-wide/16 v7, -0x1

    cmp-long v0, p8, v7

    if-nez v0, :cond_4

    .line 14
    iget v0, v6, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    int-to-long v7, v0

    move-object v0, p2

    goto :goto_2

    :cond_4
    move-object v0, p2

    move-wide/from16 v7, p8

    .line 15
    :goto_2
    iput-object v0, v1, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    .line 16
    iput-object v2, v1, Landroid/media/videoeditor/AudioTrack;->mFilename:Ljava/lang/String;

    move-wide v9, p4

    .line 17
    iput-wide v9, v1, Landroid/media/videoeditor/AudioTrack;->mStartTimeMs:J

    .line 18
    iget v0, v6, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    int-to-long v9, v0

    iput-wide v9, v1, Landroid/media/videoeditor/AudioTrack;->mDurationMs:J

    .line 19
    iget v0, v6, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v0, v1, Landroid/media/videoeditor/AudioTrack;->mAudioChannels:I

    .line 20
    iget v0, v6, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioBitrate:I

    iput v0, v1, Landroid/media/videoeditor/AudioTrack;->mAudioBitrate:I

    .line 21
    iget v0, v6, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v0, v1, Landroid/media/videoeditor/AudioTrack;->mAudioSamplingFrequency:I

    .line 22
    iget v0, v6, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    iput v0, v1, Landroid/media/videoeditor/AudioTrack;->mAudioType:I

    sub-long v9, v7, v3

    .line 23
    iput-wide v9, v1, Landroid/media/videoeditor/AudioTrack;->mTimelineDurationMs:J

    move/from16 v0, p11

    .line 24
    iput v0, v1, Landroid/media/videoeditor/AudioTrack;->mVolumePercent:I

    .line 25
    iput-wide v3, v1, Landroid/media/videoeditor/AudioTrack;->mBeginBoundaryTimeMs:J

    .line 26
    iput-wide v7, v1, Landroid/media/videoeditor/AudioTrack;->mEndBoundaryTimeMs:J

    move/from16 v0, p10

    .line 27
    iput-boolean v0, v1, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    move/from16 v0, p12

    .line 28
    iput-boolean v0, v1, Landroid/media/videoeditor/AudioTrack;->mMuted:Z

    move/from16 v0, p13

    .line 29
    iput-boolean v0, v1, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    move/from16 v0, p14

    .line 30
    iput v0, v1, Landroid/media/videoeditor/AudioTrack;->mDuckingThreshold:I

    move/from16 v0, p15

    .line 31
    iput v0, v1, Landroid/media/videoeditor/AudioTrack;->mDuckedTrackVolume:I

    .line 32
    iput-object v5, v1, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 33
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v2, Landroid/media/videoeditor/WaveformData;

    invoke-direct {v2, v5}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 34
    iput-object v0, v1, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    :goto_3
    return-void

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "editor is not of type VideoEditorImpl"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "File size is more than 2GB"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found ! "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public disableDucking()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    :cond_0
    return-void
.end method

.method public disableLoop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    :cond_0
    return-void
.end method

.method public enableDucking(II)V
    .locals 2

    if-ltz p1, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 2
    iput p1, p0, Landroid/media/videoeditor/AudioTrack;->mDuckingThreshold:I

    .line 3
    iput p2, p0, Landroid/media/videoeditor/AudioTrack;->mDuckedTrackVolume:I

    .line 4
    iput-boolean v1, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid duckedTrackVolume value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid threshold value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public enableLoop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iput-boolean v1, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/media/videoeditor/AudioTrack;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    check-cast p1, Landroid/media/videoeditor/AudioTrack;

    iget-object p1, p1, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public extractAudioWaveform(Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/audioWaveformFile-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".dat"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v2, p0, Landroid/media/videoeditor/AudioTrack;->mAudioType:I

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/16 v1, 0xa

    const/16 v2, 0x140

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported codec type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v1, 0x24

    const/16 v2, 0x480

    goto :goto_0

    :cond_2
    const/16 v1, 0x20

    const/16 v2, 0x400

    :goto_0
    move v6, v1

    move v8, v2

    goto :goto_1

    :cond_3
    const/16 v1, 0xa0

    move v8, v1

    move v6, v3

    .line 6
    :goto_1
    iget-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v3, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/videoeditor/AudioTrack;->mFilename:Ljava/lang/String;

    const/4 v7, 0x2

    const/4 v10, 0x0

    move-object v5, v0

    move-object v9, p1

    invoke-virtual/range {v2 .. v10}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateAudioGraph(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/media/videoeditor/ExtractAudioWaveformProgressListener;Z)V

    .line 7
    iput-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/ref/SoftReference;

    new-instance v0, Landroid/media/videoeditor/WaveformData;

    iget-object v1, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public getAudioBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioBitrate:I

    return v0
.end method

.method public getAudioChannels()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioChannels:I

    return v0
.end method

.method public getAudioSamplingFrequency()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioSamplingFrequency:I

    return v0
.end method

.method public getAudioType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioType:I

    return v0
.end method

.method public getAudioWaveformFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getBoundaryBeginTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mBeginBoundaryTimeMs:J

    return-wide v0
.end method

.method public getBoundaryEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mEndBoundaryTimeMs:J

    return-wide v0
.end method

.method public getDuckedTrackVolume()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mDuckedTrackVolume:I

    return v0
.end method

.method public getDuckingThreshhold()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mDuckingThreshold:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mDurationMs:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mStartTimeMs:J

    return-wide v0
.end method

.method public getTimelineDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mTimelineDurationMs:J

    return-wide v0
.end method

.method public getVolume()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mVolumePercent:I

    return v0
.end method

.method public getWaveformData()Landroid/media/videoeditor/WaveformData;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/WaveformData;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    new-instance v1, Landroid/media/videoeditor/WaveformData;

    invoke-direct {v1, v0}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    return-object v1

    :catch_0
    move-exception v0

    .line 6
    throw v0

    :cond_2
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    :cond_0
    return-void
.end method

.method public isDuckingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mMuted:Z

    return v0
.end method

.method public setExtractBoundaries(JJ)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mDurationMs:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_3

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    iput-wide p1, p0, Landroid/media/videoeditor/AudioTrack;->mBeginBoundaryTimeMs:J

    .line 4
    iput-wide p3, p0, Landroid/media/videoeditor/AudioTrack;->mEndBoundaryTimeMs:J

    sub-long/2addr p3, p1

    .line 5
    iput-wide p3, p0, Landroid/media/videoeditor/AudioTrack;->mTimelineDurationMs:J

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid end time; is < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid start time; is < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid end time"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid start time"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMute(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 2
    iput-boolean p1, p0, Landroid/media/videoeditor/AudioTrack;->mMuted:Z

    return-void
.end method

.method public setVolume(I)V
    .locals 2

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 2
    iput p1, p0, Landroid/media/videoeditor/AudioTrack;->mVolumePercent:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Volume "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Volume set exceeds maximum allowed value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
