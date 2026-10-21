.class public Landroid/filterpacks/videosink/MediaEncoderFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;
    }
.end annotation


# static fields
.field private static final NO_AUDIO_SOURCE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MediaEncoderFilter"


# instance fields
.field private mAudioSource:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "audioSource"
    .end annotation
.end field

.field private mCaptureTimeLapse:Z

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "errorListener"
    .end annotation
.end field

.field private mFd:Ljava/io/FileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFileDescriptor"
    .end annotation
.end field

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "infoListener"
    .end annotation
.end field

.field private mLastTimeLapseFrameRealTimestampNs:J

.field private mLogVerbose:Z

.field private mMaxDurationMs:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxDurationMs"
    .end annotation
.end field

.field private mMaxFileSize:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxFileSize"
    .end annotation
.end field

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mNumFramesEncoded:I

.field private mOrientationHint:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientationHint"
    .end annotation
.end field

.field private mOutputFile:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFile"
    .end annotation
.end field

.field private mOutputFormat:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFormat"
    .end annotation
.end field

.field private mProfile:Landroid/media/CamcorderProfile;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingProfile"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRecording:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recording"
    .end annotation
.end field

.field private mRecordingActive:Z

.field private mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingDoneListener"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mSourceRegion:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inputRegion"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mTimeBetweenTimeLapseFrameCaptureUs:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timelapseRecordingIntervalUs"
    .end annotation
.end field

.field private mTimestampNs:J

.field private mVideoEncoder:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "videoEncoder"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    .line 6
    .line 7
    new-instance p1, Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "/sdcard/MediaEncoderOut.mp4"

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFile:Ljava/lang/String;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    .line 21
    .line 22
    iput-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 23
    .line 24
    iput-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 25
    .line 26
    iput-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOrientationHint:I

    .line 30
    .line 31
    iput-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    .line 32
    .line 33
    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    .line 34
    .line 35
    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    .line 36
    .line 37
    const/16 p1, 0x1e

    .line 38
    .line 39
    iput p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    .line 40
    .line 41
    const/4 p1, 0x2

    .line 42
    iput p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFormat:I

    .line 43
    .line 44
    iput p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mVideoEncoder:I

    .line 45
    .line 46
    const-wide/16 v1, 0x0

    .line 47
    .line 48
    iput-wide v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxFileSize:J

    .line 49
    .line 50
    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxDurationMs:I

    .line 51
    .line 52
    iput-wide v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    .line 53
    .line 54
    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 55
    .line 56
    iput-wide v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 57
    .line 58
    iput-wide v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 59
    .line 60
    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 61
    .line 62
    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    .line 63
    .line 64
    new-instance v0, Landroid/filterfw/geometry/Point;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-direct {v0, v1, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Landroid/filterfw/geometry/Point;

    .line 71
    .line 72
    const/high16 v3, 0x3f800000    # 1.0f

    .line 73
    .line 74
    invoke-direct {v2, v3, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 75
    .line 76
    .line 77
    new-instance v4, Landroid/filterfw/geometry/Point;

    .line 78
    .line 79
    invoke-direct {v4, v1, v3}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Landroid/filterfw/geometry/Point;

    .line 83
    .line 84
    invoke-direct {v1, v3, v3}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 85
    .line 86
    .line 87
    new-instance v3, Landroid/filterfw/geometry/Quad;

    .line 88
    .line 89
    invoke-direct {v3, v0, v2, v4, v1}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 90
    .line 91
    .line 92
    iput-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    .line 93
    .line 94
    const-string v0, "MediaEncoderFilter"

    .line 95
    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iput-boolean p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 101
    .line 102
    return-void
.end method

.method private startRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 2
    .line 3
    const-string v1, "MediaEncoderFilter"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Starting recording"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x3

    .line 16
    invoke-direct {v0, v2, v3}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 21
    .line 22
    .line 23
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    if-lez v2, :cond_1

    .line 28
    .line 29
    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    .line 30
    .line 31
    if-lez v5, :cond_1

    .line 32
    .line 33
    move v5, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v5, v4

    .line 36
    :goto_0
    iget-object v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    .line 37
    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    if-nez v5, :cond_2

    .line 41
    .line 42
    iget v2, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 43
    .line 44
    iget v5, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v0, v2, v5}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/16 v5, 0x65

    .line 57
    .line 58
    const-wide/16 v6, 0x0

    .line 59
    .line 60
    invoke-virtual {v2, v0, v5, v6, v7}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/filterfw/core/GLFrame;

    .line 65
    .line 66
    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 67
    .line 68
    new-instance v0, Landroid/media/MediaRecorder;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 74
    .line 75
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateMediaRecorderParams()V

    .line 76
    .line 77
    .line 78
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 86
    .line 87
    .line 88
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    const-string v0, "Open: registering surface from Mediarecorder"

    .line 93
    .line 94
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iput p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    .line 108
    .line 109
    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 110
    .line 111
    iput-boolean v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 112
    .line 113
    return-void

    .line 114
    :catch_0
    move-exception p1

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    .line 116
    .line 117
    const-string v1, "Unknown Exception inMediaRecorder.prepare()!"

    .line 118
    .line 119
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :catch_1
    move-exception p1

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    .line 125
    .line 126
    const-string v1, "IOException inMediaRecorder.prepare()!"

    .line 127
    .line 128
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :catch_2
    move-exception p1

    .line 133
    throw p1
.end method

.method private stopRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 2
    .line 3
    const-string v1, "MediaEncoderFilter"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Stopping recording"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 14
    .line 15
    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v2, v0

    .line 35
    .line 36
    const-string v0, "Unregistering surface %d"

    .line 37
    .line 38
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    iget-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 62
    .line 63
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 69
    .line 70
    iget-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-interface {p1}, Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;->onRecordingDone()V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void

    .line 78
    :catch_0
    move-exception p1

    .line 79
    new-instance v0, Landroid/filterpacks/videosink/MediaRecorderStopException;

    .line 80
    .line 81
    const-string v1, "MediaRecorder.stop() failed!"

    .line 82
    .line 83
    invoke-direct {v0, v1, p1}, Landroid/filterpacks/videosink/MediaRecorderStopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method private updateMediaRecorderParams()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    .line 13
    .line 14
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    .line 44
    .line 45
    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 46
    .line 47
    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    .line 48
    .line 49
    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    .line 50
    .line 51
    if-lez v0, :cond_3

    .line 52
    .line 53
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    .line 54
    .line 55
    if-lez v1, :cond_3

    .line 56
    .line 57
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 58
    .line 59
    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 64
    .line 65
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFormat:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 71
    .line 72
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mVideoEncoder:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 78
    .line 79
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    .line 80
    .line 81
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 87
    .line 88
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 94
    .line 95
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOrientationHint:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 101
    .line 102
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 108
    .line 109
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    .line 115
    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 125
    .line 126
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFile:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 132
    .line 133
    iget-wide v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxFileSize:J

    .line 134
    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v2, "Setting maxFileSize on MediaRecorder unsuccessful! "

    .line 143
    .line 144
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "MediaEncoderFilter"

    .line 159
    .line 160
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :goto_3
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 164
    .line 165
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxDurationMs:I

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method private updateSourceRegion()V
    .locals 3

    .line 1
    new-instance v0, Landroid/filterfw/geometry/Quad;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/filterfw/geometry/Quad;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    .line 7
    .line 8
    iget-object v2, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 9
    .line 10
    iput-object v2, v0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 11
    .line 12
    iget-object v2, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 13
    .line 14
    iput-object v2, v0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 15
    .line 16
    iget-object v2, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 17
    .line 18
    iput-object v2, v0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 19
    .line 20
    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 21
    .line 22
    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 23
    .line 24
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "MediaEncoderFilter"

    .line 6
    .line 7
    const-string v1, "Closing"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "Port "

    .line 8
    .line 9
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, " has been updated"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "MediaEncoderFilter"

    .line 25
    .line 26
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string/jumbo p2, "recording"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const-string/jumbo p2, "inputRegion"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateSourceRegion()V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void

    .line 58
    :cond_3
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    iget-boolean p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 65
    .line 66
    if-nez p1, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 70
    .line 71
    const-string p2, "Cannot change recording parameters when the filter is recording!"

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_5
    :goto_0
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "MediaEncoderFilter"

    .line 6
    .line 7
    const-string v1, "Opening"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateSourceRegion()V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "MediaEncoderFilter"

    .line 6
    .line 7
    const-string v1, "Preparing"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 20
    .line 21
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "videoframe"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-boolean p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-boolean p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    invoke-virtual {p0, v2, v3}, Landroid/filterpacks/videosink/MediaEncoderFilter;->skipFrameAndModifyTimestamp(J)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 59
    .line 60
    :cond_4
    iget p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 66
    .line 67
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 68
    .line 69
    invoke-virtual {p1, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 70
    .line 71
    .line 72
    iget-wide v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 78
    .line 79
    .line 80
    iget p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 81
    .line 82
    add-int/lit8 p1, p1, 0x1

    .line 83
    .line 84
    iput p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 85
    .line 86
    return-void
.end method

.method public setupPorts()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "videoframe"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public skipFrameAndModifyTimestamp(J)Z
    .locals 9

    .line 1
    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MediaEncoderFilter"

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 9
    .line 10
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 11
    .line 12
    iget-boolean p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo p2, "timelapse: FIRST frame, last real t= "

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 25
    .line 26
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, ", setting t = "

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 35
    .line 36
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    return v1

    .line 47
    :cond_1
    const/4 v3, 0x2

    .line 48
    if-lt v0, v3, :cond_3

    .line 49
    .line 50
    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 51
    .line 52
    const-wide/16 v5, 0x3e8

    .line 53
    .line 54
    iget-wide v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    .line 55
    .line 56
    mul-long/2addr v7, v5

    .line 57
    add-long/2addr v7, v3

    .line 58
    cmp-long v0, p1, v7

    .line 59
    .line 60
    if-gez v0, :cond_3

    .line 61
    .line 62
    iget-boolean p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    const-string/jumbo p1, "timelapse: skipping intermediate frame"

    .line 67
    .line 68
    .line 69
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_2
    const/4 p1, 0x1

    .line 73
    return p1

    .line 74
    :cond_3
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    const-string/jumbo v0, "timelapse: encoding frame, Timestamp t = "

    .line 79
    .line 80
    .line 81
    const-string v3, ", last real t= "

    .line 82
    .line 83
    invoke-static {v0, p1, p2, v3}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 88
    .line 89
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, ", interval = "

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    .line 98
    .line 99
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :cond_4
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 110
    .line 111
    iget-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 112
    .line 113
    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    .line 114
    .line 115
    int-to-long v3, v0

    .line 116
    const-wide/32 v5, 0x3b9aca00

    .line 117
    .line 118
    .line 119
    div-long v3, v5, v3

    .line 120
    .line 121
    add-long/2addr v3, p1

    .line 122
    iput-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 123
    .line 124
    iget-boolean p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string/jumbo p2, "timelapse: encoding frame, setting t = "

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 137
    .line 138
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p2, ", delta t = "

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget p2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    .line 147
    .line 148
    int-to-long v3, p2

    .line 149
    div-long/2addr v5, v3

    .line 150
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p2, ", fps = "

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget p2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    .line 159
    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_5
    return v1
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method
