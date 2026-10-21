.class public Landroid/filterpacks/videosrc/MediaSource;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# static fields
.field private static final NEWFRAME_TIMEOUT:I = 0x64

.field private static final NEWFRAME_TIMEOUT_REPEAT:I = 0xa

.field private static final PREP_TIMEOUT:I = 0x64

.field private static final PREP_TIMEOUT_REPEAT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaSource"

.field private static final mSourceCoords_0:[F

.field private static final mSourceCoords_180:[F

.field private static final mSourceCoords_270:[F

.field private static final mSourceCoords_90:[F


# instance fields
.field private mCompleted:Z

.field private mContext:Landroid/content/Context;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "context"
    .end annotation
.end field

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private final mFrameShader:Ljava/lang/String;

.field private mGotSize:Z

.field private mHeight:I

.field private final mLogVerbose:Z

.field private mLooping:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "loop"
    .end annotation
.end field

.field private mMediaFrame:Landroid/filterfw/core/GLFrame;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNewFrameAvailable:Z

.field private mOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientation"
    .end annotation
.end field

.field private mOrientationUpdated:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mPaused:Z

.field private mPlaying:Z

.field private mPrepared:Z

.field private mSelectedIsUrl:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceIsUrl"
    .end annotation
.end field

.field private mSourceAsset:Landroid/content/res/AssetFileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceAsset"
    .end annotation
.end field

.field private mSourceUrl:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceUrl"
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVolume:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "volume"
    .end annotation
.end field

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWidth:I

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_0:[F

    .line 9
    .line 10
    new-array v1, v0, [F

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_270:[F

    .line 16
    .line 17
    new-array v1, v0, [F

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_180:[F

    .line 23
    .line 24
    new-array v0, v0, [F

    .line 25
    .line 26
    fill-array-data v0, :array_3

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_90:[F

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p1, ""

    .line 5
    .line 6
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    .line 10
    .line 11
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mWaitForNewFrame:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    .line 23
    .line 24
    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    .line 25
    .line 26
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    .line 27
    .line 28
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameShader:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$1;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 36
    .line 37
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$2;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 43
    .line 44
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$3;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$3;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 50
    .line 51
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$4;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$4;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 57
    .line 58
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 59
    .line 60
    const-string p1, "MediaSource"

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 68
    .line 69
    return-void
.end method

.method public static synthetic access$000(Landroid/filterpacks/videosrc/MediaSource;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    return p0
.end method

.method public static synthetic access$100(Landroid/filterpacks/videosrc/MediaSource;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    return p0
.end method

.method public static synthetic access$102(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    return p1
.end method

.method public static synthetic access$200(Landroid/filterpacks/videosrc/MediaSource;)I
    .locals 0

    iget p0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    return p0
.end method

.method public static synthetic access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;
    .locals 0

    iget-object p0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    return-object p0
.end method

.method public static synthetic access$402(Landroid/filterpacks/videosrc/MediaSource;I)I
    .locals 0

    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    return p1
.end method

.method public static synthetic access$502(Landroid/filterpacks/videosrc/MediaSource;I)I
    .locals 0

    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    return p1
.end method

.method public static synthetic access$602(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    return p1
.end method

.method public static synthetic access$702(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    return p1
.end method

.method public static synthetic access$802(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    return p1
.end method

.method private createFormats()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    return-void
.end method

.method private declared-synchronized setupMediaPlayer(Z)Z
    .locals 11

    .line 1
    const-string v0, "Setting MediaPlayer source to URI "

    .line 2
    .line 3
    const-string v1, "Setting MediaPlayer source to asset "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iput-boolean v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    .line 8
    .line 9
    iput-boolean v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    .line 10
    .line 11
    iput-boolean v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    .line 12
    .line 13
    iput-boolean v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    .line 14
    .line 15
    iput-boolean v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    .line 16
    .line 17
    iput-boolean v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 18
    .line 19
    iget-boolean v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const-string v3, "MediaSource"

    .line 24
    .line 25
    const-string v4, "Setting up playback."

    .line 26
    .line 27
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    iget-boolean v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const-string v3, "MediaSource"

    .line 39
    .line 40
    const-string v4, "Resetting existing MediaPlayer."

    .line 41
    .line 42
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-boolean v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    const-string v3, "MediaSource"

    .line 56
    .line 57
    const-string v4, "Creating new MediaPlayer."

    .line 58
    .line 59
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_3
    new-instance v3, Landroid/media/MediaPlayer;

    .line 63
    .line 64
    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 68
    .line 69
    :goto_0
    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    if-eqz v3, :cond_b

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v4, 0x1

    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    :try_start_1
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    const-string v1, "MediaSource"

    .line 82
    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 105
    .line 106
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 113
    .line 114
    iget-object v5, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v1, v0, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_6
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 129
    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    const-string v0, "MediaSource"

    .line 133
    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    .line 140
    .line 141
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :cond_7
    iget-object v5, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 152
    .line 153
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 162
    .line 163
    .line 164
    move-result-wide v7

    .line 165
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 168
    .line 169
    .line 170
    move-result-wide v9

    .line 171
    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .line 173
    .line 174
    :goto_1
    :try_start_2
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 175
    .line 176
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 182
    .line 183
    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    .line 184
    .line 185
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 186
    .line 187
    .line 188
    new-instance p1, Landroid/view/Surface;

    .line 189
    .line 190
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 191
    .line 192
    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 196
    .line 197
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 204
    .line 205
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 211
    .line 212
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 218
    .line 219
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 225
    .line 226
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 229
    .line 230
    .line 231
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 232
    .line 233
    if-eqz p1, :cond_8

    .line 234
    .line 235
    const-string p1, "MediaSource"

    .line 236
    .line 237
    const-string v0, "Preparing MediaPlayer."

    .line 238
    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    :cond_8
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    .line 246
    .line 247
    monitor-exit p0

    .line 248
    return v4

    .line 249
    :catch_0
    move-exception v0

    .line 250
    :try_start_3
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 251
    .line 252
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 253
    .line 254
    .line 255
    iput-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 256
    .line 257
    if-eqz p1, :cond_9

    .line 258
    .line 259
    new-instance p1, Ljava/lang/RuntimeException;

    .line 260
    .line 261
    const-string v1, "Unable to set MediaPlayer to URL %s!"

    .line 262
    .line 263
    new-array v3, v4, [Ljava/lang/Object;

    .line 264
    .line 265
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    .line 266
    .line 267
    aput-object v4, v3, v2

    .line 268
    .line 269
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    throw p1

    .line 277
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 278
    .line 279
    const-string v1, "Unable to set MediaPlayer to asset %s!"

    .line 280
    .line 281
    new-array v3, v4, [Ljava/lang/Object;

    .line 282
    .line 283
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    .line 284
    .line 285
    aput-object v4, v3, v2

    .line 286
    .line 287
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    throw p1

    .line 295
    :catch_1
    move-exception v0

    .line 296
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 297
    .line 298
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 299
    .line 300
    .line 301
    iput-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 302
    .line 303
    if-eqz p1, :cond_a

    .line 304
    .line 305
    new-instance p1, Ljava/lang/RuntimeException;

    .line 306
    .line 307
    const-string v1, "Unable to set MediaPlayer to URL %s!"

    .line 308
    .line 309
    new-array v3, v4, [Ljava/lang/Object;

    .line 310
    .line 311
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    .line 312
    .line 313
    aput-object v4, v3, v2

    .line 314
    .line 315
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    .line 321
    .line 322
    throw p1

    .line 323
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    .line 324
    .line 325
    const-string v1, "Unable to set MediaPlayer to asset %s!"

    .line 326
    .line 327
    new-array v3, v4, [Ljava/lang/Object;

    .line 328
    .line 329
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    .line 330
    .line 331
    aput-object v4, v3, v2

    .line 332
    .line 333
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    .line 339
    .line 340
    throw p1

    .line 341
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 342
    .line 343
    const-string v0, "Unable to create a MediaPlayer!"

    .line 344
    .line 345
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    :catchall_0
    move-exception p1

    .line 350
    monitor-exit p0

    .line 351
    throw p1
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    .line 16
    .line 17
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    .line 18
    .line 19
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    .line 20
    .line 21
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    .line 22
    .line 23
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    .line 24
    .line 25
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 26
    .line 27
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 34
    .line 35
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 41
    .line 42
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const-string p1, "MediaSource"

    .line 47
    .line 48
    const-string v0, "MediaSource closed"

    .line 49
    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 2
    .line 3
    const-string v0, "MediaSource"

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string p2, "Parameter update"

    .line 8
    .line 9
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string/jumbo p2, "sourceUrl"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const-string v1, "Opening new source URL"

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_c

    .line 28
    .line 29
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    .line 37
    .line 38
    if-eqz p1, :cond_c

    .line 39
    .line 40
    invoke-direct {p0, p1}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    .line 41
    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_2
    const-string/jumbo p2, "sourceAsset"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_c

    .line 59
    .line 60
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    const-string p1, "Opening new source FD"

    .line 65
    .line 66
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    .line 70
    .line 71
    if-nez p1, :cond_c

    .line 72
    .line 73
    invoke-direct {p0, p1}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    .line 74
    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_4
    const-string/jumbo p2, "loop"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_c

    .line 92
    .line 93
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 94
    .line 95
    iget-boolean p2, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_5
    const-string/jumbo p2, "sourceIsUrl"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_8

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_c

    .line 116
    .line 117
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    .line 118
    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 122
    .line 123
    if-eqz p1, :cond_7

    .line 124
    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 130
    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    const-string p1, "Opening new source Asset"

    .line 134
    .line 135
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_0
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    .line 139
    .line 140
    invoke-direct {p0, p1}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_8
    const-string/jumbo p2, "volume"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_9

    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_c

    .line 158
    .line 159
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 160
    .line 161
    iget p2, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    .line 162
    .line 163
    invoke-virtual {p1, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_9
    const-string/jumbo p2, "orientation"

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_c

    .line 175
    .line 176
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    .line 177
    .line 178
    if-eqz p1, :cond_c

    .line 179
    .line 180
    iget p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    .line 181
    .line 182
    if-eqz p1, :cond_b

    .line 183
    .line 184
    const/16 p2, 0xb4

    .line 185
    .line 186
    if-ne p1, p2, :cond_a

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_a
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 190
    .line 191
    iget p2, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    .line 192
    .line 193
    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    .line 194
    .line 195
    invoke-virtual {p1, p2, v0}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_b
    :goto_1
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 200
    .line 201
    iget p2, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    .line 202
    .line 203
    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    .line 204
    .line 205
    invoke-virtual {p1, p2, v0}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 206
    .line 207
    .line 208
    :goto_2
    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    .line 210
    .line 211
    :cond_c
    :goto_3
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v0, "Opening MediaSource"

    .line 6
    .line 7
    const-string v1, "MediaSource"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Current URL is "

    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v0, "Current source is Asset!"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 46
    .line 47
    const/16 v1, 0x68

    .line 48
    .line 49
    const-wide/16 v2, 0x0

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/filterfw/core/GLFrame;

    .line 56
    .line 57
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 58
    .line 59
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 69
    .line 70
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    .line 71
    .line 72
    invoke-direct {p0, p1}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 80
    .line 81
    const-string v0, "Error setting up MediaPlayer!"

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public declared-synchronized pauseVideo(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "MediaSource"

    .line 6
    .line 7
    const-string v1, "Preparing MediaSource"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    .line 13
    .line 14
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    const/high16 v1, -0x40800000    # -1.0f

    .line 23
    .line 24
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    .line 26
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/filterpacks/videosrc/MediaSource;->createFormats()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 4
    .line 5
    const-string v2, "MediaSource"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "Processing new frame"

    .line 10
    .line 11
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 15
    .line 16
    if-eqz v1, :cond_17

    .line 17
    .line 18
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    .line 19
    .line 20
    const-string/jumbo v3, "video"

    .line 21
    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    .line 30
    .line 31
    const-wide/16 v4, 0x64

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    const/4 v7, 0x0

    .line 35
    if-nez v1, :cond_8

    .line 36
    .line 37
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const-string v1, "Waiting for preparation to complete"

    .line 42
    .line 43
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_2
    move v1, v7

    .line 47
    :goto_0
    iget-boolean v8, v0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    .line 48
    .line 49
    if-eqz v8, :cond_5

    .line 50
    .line 51
    iget-boolean v8, v0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    .line 52
    .line 53
    if-nez v8, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    const-string v1, "Starting playback"

    .line 61
    .line 62
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_4
    iget-object v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    :catch_0
    iget-boolean v8, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    .line 75
    .line 76
    if-eqz v8, :cond_6

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_6
    add-int/2addr v1, v6

    .line 83
    const/16 v8, 0x64

    .line 84
    .line 85
    if-eq v1, v8, :cond_7

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_7
    iget-object v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 91
    .line 92
    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    .line 94
    .line 95
    const-string v2, "MediaPlayer timed out while preparing!"

    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v1

    .line 101
    :cond_8
    :goto_2
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    .line 102
    .line 103
    if-eqz v1, :cond_9

    .line 104
    .line 105
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    .line 106
    .line 107
    if-nez v1, :cond_10

    .line 108
    .line 109
    :cond_9
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mWaitForNewFrame:Z

    .line 110
    .line 111
    if-eqz v1, :cond_f

    .line 112
    .line 113
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 114
    .line 115
    if-eqz v1, :cond_a

    .line 116
    .line 117
    const-string v1, "Waiting for new frame"

    .line 118
    .line 119
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :cond_a
    move v1, v7

    .line 123
    :goto_3
    iget-boolean v8, v0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 124
    .line 125
    if-nez v8, :cond_e

    .line 126
    .line 127
    const/16 v8, 0xa

    .line 128
    .line 129
    if-ne v1, v8, :cond_c

    .line 130
    .line 131
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    .line 132
    .line 133
    if-eqz v1, :cond_b

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 140
    .line 141
    const-string v2, "Timeout waiting for new frame!"

    .line 142
    .line 143
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v1

    .line 147
    :cond_c
    :try_start_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :catch_1
    iget-boolean v8, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 152
    .line 153
    if-eqz v8, :cond_d

    .line 154
    .line 155
    const-string/jumbo v8, "interrupted"

    .line 156
    .line 157
    .line 158
    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_d
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_e
    iput-boolean v7, v0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 165
    .line 166
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 167
    .line 168
    if-eqz v1, :cond_f

    .line 169
    .line 170
    const-string v1, "Got new frame"

    .line 171
    .line 172
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :cond_f
    iget-object v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 178
    .line 179
    .line 180
    iput-boolean v6, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    .line 181
    .line 182
    :cond_10
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    .line 183
    .line 184
    if-eqz v1, :cond_15

    .line 185
    .line 186
    const/16 v1, 0x10

    .line 187
    .line 188
    new-array v10, v1, [F

    .line 189
    .line 190
    iget-object v4, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 191
    .line 192
    invoke-virtual {v4, v10}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 193
    .line 194
    .line 195
    new-array v1, v1, [F

    .line 196
    .line 197
    iget v4, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    .line 198
    .line 199
    const/16 v5, 0x5a

    .line 200
    .line 201
    if-eq v4, v5, :cond_13

    .line 202
    .line 203
    const/16 v5, 0xb4

    .line 204
    .line 205
    if-eq v4, v5, :cond_12

    .line 206
    .line 207
    const/16 v5, 0x10e

    .line 208
    .line 209
    if-eq v4, v5, :cond_11

    .line 210
    .line 211
    const/4 v9, 0x0

    .line 212
    const/4 v11, 0x0

    .line 213
    sget-object v12, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_0:[F

    .line 214
    .line 215
    const/4 v13, 0x0

    .line 216
    move-object v8, v1

    .line 217
    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_11
    const/4 v9, 0x0

    .line 222
    const/4 v11, 0x0

    .line 223
    sget-object v12, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_270:[F

    .line 224
    .line 225
    const/4 v13, 0x0

    .line 226
    move-object v8, v1

    .line 227
    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_12
    const/4 v9, 0x0

    .line 232
    const/4 v11, 0x0

    .line 233
    sget-object v12, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_180:[F

    .line 234
    .line 235
    const/4 v13, 0x0

    .line 236
    move-object v8, v1

    .line 237
    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_13
    const/4 v9, 0x0

    .line 242
    const/4 v11, 0x0

    .line 243
    sget-object v12, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_90:[F

    .line 244
    .line 245
    const/4 v13, 0x0

    .line 246
    move-object v8, v1

    .line 247
    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 248
    .line 249
    .line 250
    :goto_5
    iget-boolean v4, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 251
    .line 252
    const/16 v5, 0x9

    .line 253
    .line 254
    const/16 v8, 0xd

    .line 255
    .line 256
    const/16 v9, 0xc

    .line 257
    .line 258
    const/16 v10, 0x8

    .line 259
    .line 260
    const/4 v11, 0x5

    .line 261
    const/4 v12, 0x4

    .line 262
    if-eqz v4, :cond_14

    .line 263
    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v13, "OrientationHint = "

    .line 267
    .line 268
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget v13, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    .line 272
    .line 273
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    new-array v4, v10, [Ljava/lang/Object;

    .line 284
    .line 285
    aget v13, v1, v12

    .line 286
    .line 287
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 288
    .line 289
    .line 290
    move-result-object v13

    .line 291
    aput-object v13, v4, v7

    .line 292
    .line 293
    aget v13, v1, v11

    .line 294
    .line 295
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 296
    .line 297
    .line 298
    move-result-object v13

    .line 299
    aput-object v13, v4, v6

    .line 300
    .line 301
    aget v13, v1, v7

    .line 302
    .line 303
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 304
    .line 305
    .line 306
    move-result-object v13

    .line 307
    const/4 v14, 0x2

    .line 308
    aput-object v13, v4, v14

    .line 309
    .line 310
    aget v13, v1, v6

    .line 311
    .line 312
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 313
    .line 314
    .line 315
    move-result-object v13

    .line 316
    const/4 v14, 0x3

    .line 317
    aput-object v13, v4, v14

    .line 318
    .line 319
    aget v13, v1, v9

    .line 320
    .line 321
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 322
    .line 323
    .line 324
    move-result-object v13

    .line 325
    aput-object v13, v4, v12

    .line 326
    .line 327
    aget v13, v1, v8

    .line 328
    .line 329
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 330
    .line 331
    .line 332
    move-result-object v13

    .line 333
    aput-object v13, v4, v11

    .line 334
    .line 335
    aget v13, v1, v10

    .line 336
    .line 337
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 338
    .line 339
    .line 340
    move-result-object v13

    .line 341
    const/4 v14, 0x6

    .line 342
    aput-object v13, v4, v14

    .line 343
    .line 344
    aget v13, v1, v5

    .line 345
    .line 346
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    const/4 v14, 0x7

    .line 351
    aput-object v13, v4, v14

    .line 352
    .line 353
    const-string v13, "SetSourceRegion: %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f"

    .line 354
    .line 355
    invoke-static {v13, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    :cond_14
    iget-object v13, v0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 363
    .line 364
    aget v14, v1, v12

    .line 365
    .line 366
    aget v15, v1, v11

    .line 367
    .line 368
    aget v16, v1, v7

    .line 369
    .line 370
    aget v17, v1, v6

    .line 371
    .line 372
    aget v18, v1, v9

    .line 373
    .line 374
    aget v19, v1, v8

    .line 375
    .line 376
    aget v20, v1, v10

    .line 377
    .line 378
    aget v21, v1, v5

    .line 379
    .line 380
    invoke-virtual/range {v13 .. v21}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 381
    .line 382
    .line 383
    iput-boolean v7, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    .line 384
    .line 385
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    iget-object v4, v0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 390
    .line 391
    invoke-virtual {v1, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    iget-object v4, v0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 396
    .line 397
    iget-object v5, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 398
    .line 399
    invoke-virtual {v4, v5, v1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 400
    .line 401
    .line 402
    iget-object v4, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 403
    .line 404
    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 405
    .line 406
    .line 407
    move-result-wide v4

    .line 408
    iget-boolean v7, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 409
    .line 410
    if-eqz v7, :cond_16

    .line 411
    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string v8, "Timestamp: "

    .line 415
    .line 416
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    long-to-double v8, v4

    .line 420
    const-wide v10, 0x41cdcd6500000000L    # 1.0E9

    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    div-double/2addr v8, v10

    .line 426
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v8, " s"

    .line 430
    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    :cond_16
    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v3, v1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 448
    .line 449
    .line 450
    iput-boolean v6, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    .line 451
    .line 452
    return-void

    .line 453
    :cond_17
    new-instance v1, Ljava/lang/NullPointerException;

    .line 454
    .line 455
    const-string v2, "Unexpected null media player!"

    .line 456
    .line 457
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw v1
.end method

.method public setupPorts()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
