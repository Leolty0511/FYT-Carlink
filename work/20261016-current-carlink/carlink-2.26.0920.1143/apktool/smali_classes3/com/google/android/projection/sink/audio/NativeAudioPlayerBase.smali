.class public abstract Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AHU.NATIVE_AUDIO"


# instance fields
.field private final mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

.field private final mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mPlayer:Landroid/media/MediaPlayer;

.field private volatile mPlaying:Z


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/audio/AudioFocusManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/media/MediaPlayer;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlaying:Z

    .line 13
    .line 14
    new-instance v1, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase$1;-><init>(Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 20
    .line 21
    new-instance v2, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase$2;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase$2;-><init>(Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x3

    .line 34
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public doDuck()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public getAudioFocusManager()Lcom/google/android/projection/sink/audio/AudioFocusManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    return-object v0
.end method

.method public init(Landroid/content/Context;IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 11
    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->registerFocusChangeListener(Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 64
    .line 65
    const-string p2, "no res"

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    :catch_0
    move-exception p1

    .line 72
    new-instance p2, Ljava/lang/RuntimeException;

    .line 73
    .line 74
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw p2
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlaying:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .line 1
    const-string v0, "AHU.NATIVE_AUDIO"

    .line 2
    .line 3
    const-string v1, "native audio pause"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public play()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlaying:Z

    .line 2
    .line 3
    const-string v1, "AHU.NATIVE_AUDIO"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "native audio already playing"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "native audio start playing"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlaying:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    const-string v0, "AHU.NATIVE_AUDIO"

    .line 2
    .line 3
    const-string v1, "native audio resume"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlaying:Z

    .line 2
    .line 3
    const-string v1, "AHU.NATIVE_AUDIO"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "native audio already stopped"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "native audio stopping"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlaying:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method public undoDuck()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->mPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method
