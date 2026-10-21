.class public final Landroid/media/MediaSync;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaSync$AudioBuffer;,
        Landroid/media/MediaSync$OnErrorListener;,
        Landroid/media/MediaSync$Callback;
    }
.end annotation


# static fields
.field private static final CB_RETURN_AUDIO_BUFFER:I = 0x1

.field private static final EVENT_CALLBACK:I = 0x1

.field private static final EVENT_SET_CALLBACK:I = 0x2

.field public static final MEDIASYNC_ERROR_AUDIOTRACK_FAIL:I = 0x1

.field public static final MEDIASYNC_ERROR_SURFACE_FAIL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaSync"


# instance fields
.field private mAudioBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaSync$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioHandler:Landroid/os/Handler;

.field private final mAudioLock:Ljava/lang/Object;

.field private mAudioLooper:Landroid/os/Looper;

.field private mAudioThread:Ljava/lang/Thread;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mCallback:Landroid/media/MediaSync$Callback;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCallbackLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mOnErrorListener:Landroid/media/MediaSync$OnErrorListener;

.field private mOnErrorListenerHandler:Landroid/os/Handler;

.field private final mOnErrorListenerLock:Ljava/lang/Object;

.field private mPlaybackRate:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "media_jni"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/media/MediaSync;->native_init()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    .line 13
    .line 14
    iput-object v0, p0, Landroid/media/MediaSync;->mCallback:Landroid/media/MediaSync$Callback;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListenerLock:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object v0, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    .line 24
    .line 25
    iput-object v0, p0, Landroid/media/MediaSync;->mOnErrorListener:Landroid/media/MediaSync$OnErrorListener;

    .line 26
    .line 27
    iput-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    .line 28
    .line 29
    iput-object v0, p0, Landroid/media/MediaSync;->mAudioHandler:Landroid/os/Handler;

    .line 30
    .line 31
    iput-object v0, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/Object;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    .line 41
    .line 42
    new-instance v0, Ljava/util/LinkedList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    .line 51
    .line 52
    invoke-direct {p0}, Landroid/media/MediaSync;->native_setup()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static synthetic access$000(Landroid/media/MediaSync;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/MediaSync;)F
    .locals 0

    iget p0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    return p0
.end method

.method public static synthetic access$1000(Landroid/media/MediaSync;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1102(Landroid/media/MediaSync;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    return-object p1
.end method

.method public static synthetic access$1202(Landroid/media/MediaSync;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaSync;->mAudioHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic access$200(Landroid/media/MediaSync;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/media/MediaSync;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/media/MediaSync;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaSync;->native_updateQueuedAudioData(IJ)V

    return-void
.end method

.method public static synthetic access$500(Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V

    return-void
.end method

.method public static synthetic access$600(Landroid/media/MediaSync;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaSync;->postRenderAudio(J)V

    return-void
.end method

.method public static synthetic access$700(Landroid/media/MediaSync;)J
    .locals 2

    invoke-direct {p0}, Landroid/media/MediaSync;->native_getPlayTimeForPendingAudioFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$800(Landroid/media/MediaSync;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$900(Landroid/media/MediaSync;)Landroid/media/MediaSync$Callback;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaSync;->mCallback:Landroid/media/MediaSync$Callback;

    return-object p0
.end method

.method private createAudioThread()V
    .locals 2

    .line 1
    new-instance v0, Landroid/media/MediaSync$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/media/MediaSync$3;-><init>(Landroid/media/MediaSync;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v1
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_getPlayTimeForPendingAudioFrames()J
.end method

.method private final native native_getTimestamp(Landroid/media/MediaTimestamp;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setAudioTrack(Landroid/media/AudioTrack;)V
.end method

.method private native native_setPlaybackParams(Landroid/media/PlaybackParams;)F
.end method

.method private final native native_setSurface(Landroid/view/Surface;)V
.end method

.method private native native_setSyncParams(Landroid/media/SyncParams;)F
.end method

.method private final native native_setup()V
.end method

.method private final native native_updateQueuedAudioData(IJ)V
.end method

.method private postRenderAudio(J)V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaSync$1;

    invoke-direct {v1, p0}, Landroid/media/MediaSync$1;-><init>(Landroid/media/MediaSync;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Landroid/media/MediaSync$2;

    .line 9
    .line 10
    invoke-direct {v2, p0, p0, p1}, Landroid/media/MediaSync$2;-><init>(Landroid/media/MediaSync;Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method private final returnAudioBuffers()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/media/MediaSync$AudioBuffer;

    .line 21
    .line 22
    invoke-direct {p0, v2}, Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v1
.end method


# virtual methods
.method public final native createInputSurface()Landroid/view/Surface;
.end method

.method public finalize()V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaSync;->native_finalize()V

    return-void
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaSync;->native_flush()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v1
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public native getSyncParams()Landroid/media/SyncParams;
.end method

.method public getTimestamp()Landroid/media/MediaTimestamp;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/media/MediaTimestamp;

    .line 3
    .line 4
    invoke-direct {v1}, Landroid/media/MediaTimestamp;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v1}, Landroid/media/MediaSync;->native_getTimestamp(Landroid/media/MediaTimestamp;)Z

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :catch_0
    :cond_0
    return-object v0
.end method

.method public queueAudio(Ljava/nio/ByteBuffer;IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    .line 13
    .line 14
    new-instance v2, Landroid/media/MediaSync$AudioBuffer;

    .line 15
    .line 16
    invoke-direct {v2, p1, p2, p3, p4}, Landroid/media/MediaSync$AudioBuffer;-><init>(Ljava/nio/ByteBuffer;IJ)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget p1, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    .line 24
    .line 25
    float-to-double p1, p1

    .line 26
    const-wide/16 p3, 0x0

    .line 27
    .line 28
    cmpl-double p1, p1, p3

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const-wide/16 p1, 0x0

    .line 33
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/media/MediaSync;->postRenderAudio(J)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string p2, "AudioTrack is NOT set or audio thread is not created"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public final release()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/MediaSync;->returnAudioBuffers()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0, v0}, Landroid/media/MediaSync;->setCallback(Landroid/media/MediaSync$Callback;Landroid/os/Handler;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/media/MediaSync;->native_release()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setAudioTrack(Landroid/media/AudioTrack;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/media/MediaSync;->createAudioThread()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setCallback(Landroid/media/MediaSync$Callback;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    iput-object p2, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_1
    if-nez p2, :cond_2

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v1, Landroid/os/Handler;

    .line 26
    .line 27
    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    .line 31
    .line 32
    :goto_0
    iput-object p1, p0, Landroid/media/MediaSync;->mCallback:Landroid/media/MediaSync$Callback;

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public setOnErrorListener(Landroid/media/MediaSync$OnErrorListener;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/MediaSync;->mOnErrorListenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    iput-object p2, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_1
    if-nez p2, :cond_2

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v1, Landroid/os/Handler;

    .line 26
    .line 27
    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    .line 31
    .line 32
    :goto_0
    iput-object p1, p0, Landroid/media/MediaSync;->mOnErrorListener:Landroid/media/MediaSync$OnErrorListener;

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setPlaybackParams(Landroid/media/PlaybackParams;)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    float-to-double v0, p1

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmpl-double p1, v0, v2

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Landroid/media/MediaSync;->postRenderAudio(J)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setSyncParams(Landroid/media/SyncParams;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setSyncParams(Landroid/media/SyncParams;)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    float-to-double v0, p1

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmpl-double p1, v0, v2

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Landroid/media/MediaSync;->postRenderAudio(J)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method
