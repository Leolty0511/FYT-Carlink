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

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_0:[F

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_270:[F

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_180:[F

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_3

    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_90:[F

    return-void

    nop

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

    const-string p1, ""

    .line 2
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    .line 4
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mWaitForNewFrame:Z

    .line 7
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    .line 9
    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    .line 10
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameShader:Ljava/lang/String;

    .line 11
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$1;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$1;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 12
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$2;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$2;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 13
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$3;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$3;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 14
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$4;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$4;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 15
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    const-string p1, "MediaSource"

    const/4 v0, 0x2

    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    return-void
.end method

.method public static synthetic access$000(Landroid/filterpacks/videosrc/MediaSource;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    return p0
.end method

.method public static synthetic access$100(Landroid/filterpacks/videosrc/MediaSource;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    return p0
.end method

.method public static synthetic access$102(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    return p1
.end method

.method public static synthetic access$200(Landroid/filterpacks/videosrc/MediaSource;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    return p0
.end method

.method public static synthetic access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    return-object p0
.end method

.method public static synthetic access$402(Landroid/filterpacks/videosrc/MediaSource;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    return p1
.end method

.method public static synthetic access$502(Landroid/filterpacks/videosrc/MediaSource;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    return p1
.end method

.method public static synthetic access$602(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    return p1
.end method

.method public static synthetic access$702(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    return p1
.end method

.method public static synthetic access$802(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    return p1
.end method

.method private createFormats()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    return-void
.end method

.method private declared-synchronized setupMediaPlayer(Z)Z
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    .line 2
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    .line 3
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    .line 4
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    .line 5
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    .line 6
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 7
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "MediaSource"

    const-string v2, "Setting up playback."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 9
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v1, :cond_1

    const-string v1, "MediaSource"

    const-string v2, "Resetting existing MediaPlayer."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v1, :cond_3

    const-string v1, "MediaSource"

    const-string v2, "Creating new MediaPlayer."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 13
    :goto_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 14
    :try_start_1
    iget-boolean v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_4

    const-string v3, "MediaSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting MediaPlayer source to URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_4
    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mContext:Landroid/content/Context;

    if-nez v3, :cond_5

    .line 16
    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_5
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 18
    :cond_6
    iget-boolean v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_7

    const-string v3, "MediaSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting MediaPlayer source to asset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_7
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_1
    :try_start_2
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 21
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 22
    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 23
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 24
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 25
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 26
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 27
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 28
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 29
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz p1, :cond_8

    const-string p1, "MediaSource"

    const-string v0, "Preparing MediaPlayer."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_8
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    monitor-exit p0

    return v2

    :catch_0
    move-exception v3

    .line 32
    :try_start_3
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 33
    iput-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_9

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to URL %s!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 35
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to asset %s!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    aput-object v4, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v3

    .line 36
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 37
    iput-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_a

    .line 38
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to URL %s!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 39
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to asset %s!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    aput-object v4, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 40
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create a MediaPlayer!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    .line 4
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    .line 5
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    .line 6
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    .line 7
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    .line 8
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 9
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 11
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 12
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 13
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz p1, :cond_1

    const-string p1, "MediaSource"

    const-string v0, "MediaSource closed"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    const-string v0, "MediaSource"

    if-eqz p2, :cond_0

    const-string p2, "Parameter update"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo p2, "sourceUrl"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "Opening new source URL"

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 4
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz p1, :cond_1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-eqz p1, :cond_c

    .line 6
    invoke-direct {p0, p1}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    goto/16 :goto_3

    :cond_2
    const-string/jumbo p2, "sourceAsset"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 9
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz p1, :cond_3

    const-string p1, "Opening new source FD"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_3
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-nez p1, :cond_c

    .line 11
    invoke-direct {p0, p1}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    goto/16 :goto_3

    :cond_4
    const-string p2, "loop"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 13
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 14
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean p2, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto/16 :goto_3

    :cond_5
    const-string/jumbo p2, "sourceIsUrl"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 16
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 17
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-eqz p1, :cond_6

    .line 18
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz p1, :cond_7

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 19
    :cond_6
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz p1, :cond_7

    const-string p1, "Opening new source Asset"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_7
    :goto_0
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    invoke-direct {p0, p1}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    goto :goto_3

    :cond_8
    const-string/jumbo p2, "volume"

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 22
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 23
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget p2, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    invoke-virtual {p1, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_3

    :cond_9
    const-string p2, "orientation"

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    if-eqz p1, :cond_c

    .line 25
    iget p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    if-eqz p1, :cond_b

    const/16 p2, 0xb4

    if-ne p1, p2, :cond_a

    goto :goto_1

    .line 26
    :cond_a
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget p2, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_2

    .line 27
    :cond_b
    :goto_1
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget p2, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    :goto_2
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    :cond_c
    :goto_3
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "MediaSource"

    const-string v1, "Opening MediaSource"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current URL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Current source is Asset!"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/16 v1, 0x68

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object p1

    check-cast p1, Landroid/filterfw/core/GLFrame;

    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 7
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 8
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    invoke-direct {p0, p1}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error setting up MediaPlayer!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized pauseVideo(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 4
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 6
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaSource"

    const-string v1, "Preparing MediaSource"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    const/4 p1, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 4
    invoke-direct {p0}, Landroid/filterpacks/videosrc/MediaSource;->createFormats()V

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    const-string v2, "MediaSource"

    if-eqz v1, :cond_0

    const-string v1, "Processing new frame"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v3, "Unexpected null media player!"

    .line 3
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    const-string/jumbo v3, "video"

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_8

    .line 7
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v1, :cond_2

    const-string v1, "Waiting for preparation to complete"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v7

    .line 8
    :goto_0
    iget-boolean v8, v0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    if-eqz v8, :cond_5

    iget-boolean v8, v0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    if-nez v8, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v1, :cond_4

    const-string v1, "Starting playback"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_4
    iget-object v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_2

    .line 11
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    iget-boolean v8, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    if-eqz v8, :cond_6

    .line 13
    invoke-virtual {v0, v3}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    return-void

    :cond_6
    add-int/2addr v1, v6

    const/16 v8, 0x64

    if-eq v1, v8, :cond_7

    goto :goto_0

    .line 14
    :cond_7
    iget-object v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 15
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MediaPlayer timed out while preparing!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_8
    :goto_2
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    if-nez v1, :cond_10

    .line 17
    :cond_9
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mWaitForNewFrame:Z

    if-eqz v1, :cond_f

    .line 18
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v1, :cond_a

    const-string v1, "Waiting for new frame"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v1, v7

    .line 19
    :goto_3
    iget-boolean v8, v0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    if-nez v8, :cond_e

    const/16 v8, 0xa

    if-ne v1, v8, :cond_c

    .line 20
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    if-eqz v1, :cond_b

    .line 21
    invoke-virtual {v0, v3}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Timeout waiting for new frame!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_c
    :try_start_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 24
    :catch_1
    iget-boolean v8, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v8, :cond_d

    const-string v8, "interrupted"

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 25
    :cond_e
    iput-boolean v7, v0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 26
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v1, :cond_f

    const-string v1, "Got new frame"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_f
    iget-object v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 28
    iput-boolean v6, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    .line 29
    :cond_10
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    if-eqz v1, :cond_15

    const/16 v1, 0x10

    new-array v10, v1, [F

    .line 30
    iget-object v4, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v10}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    new-array v1, v1, [F

    .line 31
    iget v4, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_13

    const/16 v5, 0xb4

    if-eq v4, v5, :cond_12

    const/16 v5, 0x10e

    if-eq v4, v5, :cond_11

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 32
    sget-object v12, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_0:[F

    const/4 v13, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto :goto_5

    :cond_11
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 33
    sget-object v12, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_270:[F

    const/4 v13, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto :goto_5

    :cond_12
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 34
    sget-object v12, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_180:[F

    const/4 v13, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto :goto_5

    :cond_13
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 35
    sget-object v12, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_90:[F

    const/4 v13, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 36
    :goto_5
    iget-boolean v4, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    const/16 v5, 0x9

    const/16 v8, 0xd

    const/16 v9, 0xc

    const/16 v10, 0x8

    const/4 v11, 0x5

    const/4 v12, 0x4

    if-eqz v4, :cond_14

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OrientationHint = "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v10, [Ljava/lang/Object;

    .line 38
    aget v13, v1, v12

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v4, v7

    aget v13, v1, v11

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v4, v6

    const/4 v13, 0x2

    aget v14, v1, v7

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v4, v13

    const/4 v13, 0x3

    aget v14, v1, v6

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v4, v13

    aget v13, v1, v9

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v4, v12

    aget v13, v1, v8

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v4, v11

    const/4 v13, 0x6

    aget v14, v1, v10

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v4, v13

    const/4 v13, 0x7

    aget v14, v1, v5

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v4, v13

    const-string v13, "SetSourceRegion: %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f"

    invoke-static {v13, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_14
    iget-object v13, v0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    aget v14, v1, v12

    aget v15, v1, v11

    aget v16, v1, v7

    aget v17, v1, v6

    aget v18, v1, v9

    aget v19, v1, v8

    aget v20, v1, v10

    aget v21, v1, v5

    invoke-virtual/range {v13 .. v21}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 41
    iput-boolean v7, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    .line 42
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    iget-object v4, v0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v1, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 43
    iget-object v4, v0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v5, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v4, v5, v1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 44
    iget-object v4, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v4

    .line 45
    iget-boolean v7, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v7, :cond_16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v8, v4

    const-wide v10, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, " s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_16
    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 47
    invoke-virtual {v0, v3, v1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 48
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 49
    iput-boolean v6, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const/4 v0, 0x3

    .line 1
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

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    :cond_0
    return-void
.end method
