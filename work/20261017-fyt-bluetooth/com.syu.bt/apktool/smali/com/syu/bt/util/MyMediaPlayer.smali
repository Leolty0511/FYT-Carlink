.class public Lcom/syu/bt/util/MyMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "MyMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# static fields
.field private static final LOCAL:I = 0x1

.field private static final NETWORK:I

.field public static afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private static myMediaPlayer:Lcom/syu/bt/util/MyMediaPlayer;


# instance fields
.field public audioManager:Landroid/media/AudioManager;

.field private handleProgress:Landroid/os/Handler;

.field private isPlay:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/syu/bt/util/MyMediaPlayer$1;

    invoke-direct {v0}, Lcom/syu/bt/util/MyMediaPlayer$1;-><init>()V

    sput-object v0, Lcom/syu/bt/util/MyMediaPlayer;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 52
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mTimer:Ljava/util/Timer;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->isPlay:Z

    .line 54
    new-instance v0, Lcom/syu/bt/util/MyMediaPlayer$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/syu/bt/util/MyMediaPlayer$2;-><init>(Lcom/syu/bt/util/MyMediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->handleProgress:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/syu/bt/util/MyMediaPlayer$3;

    invoke-direct {v0, p0}, Lcom/syu/bt/util/MyMediaPlayer$3;-><init>(Lcom/syu/bt/util/MyMediaPlayer;)V

    iput-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mTimerTask:Ljava/util/TimerTask;

    .line 84
    :try_start_0
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->audioManager:Landroid/media/AudioManager;

    .line 85
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 87
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 94
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 95
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/syu/bt/util/MyMediaPlayer;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v6

    .line 97
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "mediaPlayer"

    const-string v1, "error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/syu/bt/util/MyMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/syu/bt/util/MyMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/syu/bt/util/MyMediaPlayer;->isPlay:Z

    return-void
.end method

.method static synthetic access$2(Lcom/syu/bt/util/MyMediaPlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->handleProgress:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/syu/bt/util/MyMediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/syu/bt/util/MyMediaPlayer;->playCompletion(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public static getDurationLong(Ljava/lang/String;I)J
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "duration":Ljava/lang/String;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 119
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    if-nez p1, :cond_1

    .line 120
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 124
    :cond_0
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 129
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 134
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 137
    :goto_2
    return-wide v2

    .line 121
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 122
    :try_start_2
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v2

    .line 129
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 130
    :catch_1
    move-exception v2

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v2

    .line 129
    :try_start_4
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 133
    :goto_3
    throw v2

    .line 137
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 130
    :catch_2
    move-exception v3

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public static getIntances()Lcom/syu/bt/util/MyMediaPlayer;
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/syu/bt/util/MyMediaPlayer;->myMediaPlayer:Lcom/syu/bt/util/MyMediaPlayer;

    if-nez v0, :cond_1

    .line 105
    const-class v1, Lcom/syu/bt/util/MyMediaPlayer;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lcom/syu/bt/util/MyMediaPlayer;->myMediaPlayer:Lcom/syu/bt/util/MyMediaPlayer;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/syu/bt/util/MyMediaPlayer;

    invoke-direct {v0}, Lcom/syu/bt/util/MyMediaPlayer;-><init>()V

    sput-object v0, Lcom/syu/bt/util/MyMediaPlayer;->myMediaPlayer:Lcom/syu/bt/util/MyMediaPlayer;

    .line 105
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_1
    sget-object v0, Lcom/syu/bt/util/MyMediaPlayer;->myMediaPlayer:Lcom/syu/bt/util/MyMediaPlayer;

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private playCompletion(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 189
    if-eqz p2, :cond_0

    .line 190
    invoke-interface {p2, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->audioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/syu/bt/util/MyMediaPlayer;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 193
    return-void
.end method

.method private setMpPrepareMrthod(Landroid/media/MediaPlayer;Z)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "isAsync"    # Z

    .prologue
    .line 171
    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 173
    new-instance v1, Lcom/syu/bt/util/MyMediaPlayer$6;

    invoke-direct {v1, p0}, Lcom/syu/bt/util/MyMediaPlayer$6;-><init>(Lcom/syu/bt/util/MyMediaPlayer;)V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isPlaying()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->isPlay:Z

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "bufferingProgress"    # I

    .prologue
    .line 290
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 283
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 276
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 277
    const-string v0, "mediaPlayer"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 245
    :cond_0
    return-void
.end method

.method public play(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 212
    if-nez p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 218
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->audioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/syu/bt/util/MyMediaPlayer;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 221
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v6

    .line 225
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public playUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v2, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 198
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 200
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 201
    iget-object v2, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public playUrl(Landroid/content/Context;Ljava/lang/String;ZLandroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isAsync"    # Z
    .param p4, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 146
    iget-object v1, p0, Lcom/syu/bt/util/MyMediaPlayer;->audioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/syu/bt/util/MyMediaPlayer;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 147
    iget-object v1, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 148
    iget-object v1, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1, p3}, Lcom/syu/bt/util/MyMediaPlayer;->setMpPrepareMrthod(Landroid/media/MediaPlayer;Z)V

    .line 149
    iget-object v1, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/syu/bt/util/MyMediaPlayer$4;

    invoke-direct {v2, p0, p4}, Lcom/syu/bt/util/MyMediaPlayer$4;-><init>(Lcom/syu/bt/util/MyMediaPlayer;Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 156
    iget-object v1, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/syu/bt/util/MyMediaPlayer$5;

    invoke-direct {v2, p0}, Lcom/syu/bt/util/MyMediaPlayer$5;-><init>(Lcom/syu/bt/util/MyMediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public releaseMedia()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 263
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->handleProgress:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 266
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 267
    iput-object v1, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 269
    :cond_0
    return-void
.end method

.method public setNextMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "next"    # Landroid/media/MediaPlayer;

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 235
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 251
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 256
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 259
    :cond_0
    return-void
.end method
