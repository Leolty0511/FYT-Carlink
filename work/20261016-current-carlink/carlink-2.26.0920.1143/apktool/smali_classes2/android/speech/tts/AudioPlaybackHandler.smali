.class Landroid/speech/tts/AudioPlaybackHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "TTS.AudioPlaybackHandler"


# instance fields
.field private volatile mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

.field private final mHandlerThread:Ljava/lang/Thread;

.field private final mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/speech/tts/PlaybackQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/Thread;

    .line 15
    .line 16
    new-instance v2, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;

    .line 17
    .line 18
    invoke-direct {v2, p0, v0}, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;-><init>(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "TTS.AudioPlaybackThread"

    .line 22
    .line 23
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mHandlerThread:Ljava/lang/Thread;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic access$100(Landroid/speech/tts/AudioPlaybackHandler;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static synthetic access$202(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/PlaybackQueueItem;)Landroid/speech/tts/PlaybackQueueItem;
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

    return-object p1
.end method

.method private removeAllMessages()V
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method private removeWorkItemsFor(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/speech/tts/PlaybackQueueItem;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/speech/tts/PlaybackQueueItem;->getCallerIdentity()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-ne v1, p1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method private stop(Landroid/speech/tts/PlaybackQueueItem;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    .line 1
    invoke-virtual {p1, v0}, Landroid/speech/tts/PlaybackQueueItem;->stop(I)V

    return-void
.end method


# virtual methods
.method public enqueue(Landroid/speech/tts/PlaybackQueueItem;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public isSpeaking()Z
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public quit()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->removeAllMessages()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/PlaybackQueueItem;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mHandlerThread:Ljava/lang/Thread;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->removeAllMessages()V

    .line 3
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/PlaybackQueueItem;)V

    return-void
.end method

.method public stopForApp(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler;->removeWorkItemsFor(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/speech/tts/PlaybackQueueItem;->getCallerIdentity()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-ne v1, p1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/PlaybackQueueItem;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
