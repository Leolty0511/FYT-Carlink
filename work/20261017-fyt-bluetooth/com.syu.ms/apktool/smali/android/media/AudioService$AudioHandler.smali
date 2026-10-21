.class Landroid/media/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method public static synthetic access$5100(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer IllegalStateException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private onLoadSoundEffects()Z
    .locals 15

    .line 1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "AudioService"

    const-string v3, "onLoadSoundEffects() called before boot complete"

    .line 3
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 6
    monitor-exit v0

    return v3

    .line 7
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)V

    .line 8
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    new-instance v4, Landroid/media/SoundPool;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    invoke-static {v1, v4}, Landroid/media/AudioService;->access$1402(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 9
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;

    .line 10
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    new-instance v5, Landroid/media/AudioService$SoundPoolListenerThread;

    iget-object v6, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {v5, v6}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    invoke-static {v1, v5}, Landroid/media/AudioService;->access$4702(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 11
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x3

    move v5, v1

    .line 12
    :goto_0
    iget-object v6, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v6}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, 0x1388

    if-nez v6, :cond_2

    add-int/lit8 v6, v5, -0x1

    if-lez v5, :cond_2

    .line 13
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v5}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v5, "AudioService"

    const-string v7, "Interrupted while waiting sound pool listener thread."

    .line 14
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v5, v6

    goto :goto_0

    .line 15
    :cond_2
    iget-object v5, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v5}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v1, "AudioService"

    const-string v3, "onLoadSoundEffects() SoundPool listener or thread creation error"

    .line 16
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 18
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 19
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1, v4}, Landroid/media/AudioService;->access$1202(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 20
    :cond_3
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1, v4}, Landroid/media/AudioService;->access$4702(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 21
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 22
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1, v4}, Landroid/media/AudioService;->access$1402(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 23
    monitor-exit v0

    return v2

    .line 24
    :cond_4
    invoke-static {}, Landroid/media/AudioService;->access$4800()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    move v6, v2

    .line 25
    :goto_2
    invoke-static {}, Landroid/media/AudioService;->access$4800()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, -0x1

    if-ge v6, v9, :cond_5

    .line 26
    aput v10, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v6, v2

    move v9, v6

    :goto_3
    const/16 v11, 0xa

    if-ge v6, v11, :cond_9

    .line 27
    iget-object v11, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v11}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v6

    aget v11, v11, v3

    if-nez v11, :cond_6

    goto/16 :goto_4

    .line 28
    :cond_6
    iget-object v11, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v11}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v6

    aget v11, v11, v2

    aget v11, v5, v11

    if-ne v11, v10, :cond_8

    .line 29
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "/media/audio/ui/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/media/AudioService;->access$4800()Ljava/util/List;

    move-result-object v12

    iget-object v13, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v13}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v6

    aget v13, v13, v2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 30
    iget-object v12, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v12}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v12

    invoke-virtual {v12, v11, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v12

    if-gtz v12, :cond_7

    const-string v12, "AudioService"

    .line 31
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Soundpool could not load file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 32
    :cond_7
    iget-object v11, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v11}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v6

    aput v12, v11, v3

    .line 33
    iget-object v11, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v11}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v6

    aget v11, v11, v2

    aput v12, v5, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 34
    :cond_8
    iget-object v11, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v11}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v6

    iget-object v12, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v12}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v6

    aget v12, v12, v2

    aget v12, v5, v12

    aput v12, v11, v3

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_9
    if-lez v9, :cond_a

    .line 35
    iget-object v6, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v6}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/media/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v3

    :goto_5
    if-ne v5, v3, :cond_b

    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_b

    .line 36
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 37
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioService$SoundPoolCallback;->status()I

    move-result v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_1
    :try_start_4
    const-string v1, "AudioService"

    const-string v9, "Interrupted while waiting sound pool callback."

    .line 38
    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move v1, v6

    goto :goto_5

    :cond_a
    move v5, v10

    .line 39
    :cond_b
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 40
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 41
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1, v4}, Landroid/media/AudioService;->access$1202(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 42
    :cond_c
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1, v4}, Landroid/media/AudioService;->access$4702(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    if-eqz v5, :cond_f

    const-string v1, "AudioService"

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLoadSoundEffects(), Error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " while loading samples"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_7
    if-ge v1, v11, :cond_e

    .line 44
    iget-object v6, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v6}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v6

    aget-object v6, v6, v1

    aget v6, v6, v3

    if-lez v6, :cond_d

    .line 45
    iget-object v6, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v6}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v6

    aget-object v6, v6, v1

    aput v10, v6, v3

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 46
    :cond_e
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 47
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1, v4}, Landroid/media/AudioService;->access$1402(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 48
    :cond_f
    monitor-exit v0

    if-nez v5, :cond_10

    move v2, v3

    :cond_10
    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private onPlaySoundEffect(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 3
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    if-gez p2, :cond_1

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 5
    invoke-static {}, Landroid/media/AudioService;->access$5000()I

    move-result p2

    int-to-float p2, p2

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr p2, v3

    float-to-double v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p2, v1

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p2, v1

    :goto_0
    move v4, p2

    .line 6
    iget-object p2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object p2

    aget-object p2, p2, p1

    const/4 v1, 0x1

    aget p2, p2, v1

    if-lez p2, :cond_2

    .line 7
    iget-object p2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object p2

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v2

    aget-object p1, v2, p1

    aget v2, p1, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p2

    move v3, v4

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto/16 :goto_1

    .line 8
    :cond_2
    new-instance p2, Landroid/media/MediaPlayer;

    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/media/audio/ui/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/media/AudioService;->access$4800()Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v5}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v5

    aget-object p1, v5, p1

    const/4 v5, 0x0

    aget p1, p1, v5

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 12
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepare()V

    .line 13
    invoke-virtual {p2, v4}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 14
    new-instance p1, Landroid/media/AudioService$AudioHandler$1;

    invoke-direct {p1, p0}, Landroid/media/AudioService$AudioHandler$1;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 15
    new-instance p1, Landroid/media/AudioService$AudioHandler$2;

    invoke-direct {p1, p0}, Landroid/media/AudioService$AudioHandler$2;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 16
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "AudioService"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "AudioService"

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception p1

    const-string p2, "AudioService"

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private onUnloadSoundEffects()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/media/AudioService;->access$4800()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    .line 5
    :goto_0
    invoke-static {}, Landroid/media/AudioService;->access$4800()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 6
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    const/16 v4, 0xa

    if-ge v3, v4, :cond_4

    .line 7
    iget-object v4, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v4}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget-object v4, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v4}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    aget v4, v4, v2

    aget v4, v1, v4

    if-nez v4, :cond_3

    .line 9
    iget-object v4, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v4}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v4

    iget-object v6, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v6}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v6

    aget-object v6, v6, v3

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Landroid/media/SoundPool;->unload(I)Z

    .line 10
    iget-object v4, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v4}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 11
    iget-object v4, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v4}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    aget v4, v4, v2

    aput v6, v1, v4

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 13
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioService;->access$1402(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private persistRingerMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0xa

    const/4 p2, -0x2

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setAllVolumes(Landroid/media/AudioService$VolumeStreamState;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 2
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)[I

    move-result-object v1

    aget v1, v1, v0

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDeviceVolume(Landroid/media/AudioService$VolumeStreamState;I)V
    .locals 8

    .line 1
    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 2
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)[I

    move-result-object v1

    aget v1, v1, v0

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1, v0}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;I)I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 5
    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_0

    and-int/lit16 v2, p2, 0x380

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 7
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/16 v7, 0x1f4

    move v4, p2

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private setForceUse(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_e

    const/16 v1, 0x65

    if-eq v0, v1, :cond_d

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 2
    :pswitch_0
    invoke-direct {p0}, Landroid/media/AudioService$AudioHandler;->onUnloadSoundEffects()V

    goto/16 :goto_6

    .line 3
    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;I)V

    goto/16 :goto_6

    .line 4
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_6

    .line 5
    :pswitch_3
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {p1, v2}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;Z)V

    goto/16 :goto_6

    .line 6
    :pswitch_4
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)V

    goto/16 :goto_6

    .line 7
    :pswitch_5
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)V

    goto/16 :goto_6

    .line 8
    :pswitch_6
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object p1, p1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    if-lez p1, :cond_1

    .line 9
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v0, v0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 10
    :try_start_0
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, v2, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_1
    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 12
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v0, v0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/IAudioRoutesObserver;

    .line 13
    :try_start_1
    invoke-interface {v0, v1}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 15
    :cond_1
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object p1, p1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_6

    .line 16
    :pswitch_7
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 17
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "volume_master_mute"

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_6

    .line 18
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/AudioService$VolumeStreamState;

    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;->setAllVolumes(Landroid/media/AudioService$VolumeStreamState;)V

    goto/16 :goto_6

    .line 19
    :pswitch_9
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$6600(Landroid/media/AudioService;)V

    goto/16 :goto_6

    .line 20
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Landroid/media/AudioService$AudioHandler;->setForceUse(II)V

    goto/16 :goto_6

    .line 21
    :pswitch_b
    invoke-direct {p0}, Landroid/media/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v0

    .line 22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_f

    .line 23
    check-cast p1, Landroid/media/AudioService$LoadSoundEffectReply;

    .line 24
    monitor-enter p1

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    .line 25
    :goto_2
    :try_start_3
    iput v3, p1, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 27
    monitor-exit p1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 28
    :pswitch_c
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 29
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 30
    monitor-exit v0

    goto/16 :goto_6

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 31
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Landroid/media/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    goto/16 :goto_6

    .line 32
    :pswitch_e
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "AudioService"

    const-string v0, "Media server died."

    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_6

    :cond_4
    const-string p1, "AudioService"

    const-string v0, "Media server started."

    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "restarting=true"

    .line 36
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 37
    invoke-static {}, Landroid/media/AudioService;->access$5200()V

    .line 38
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    .line 39
    :try_start_5
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 41
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v4, v2, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_3

    .line 44
    :cond_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 45
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$5300(Landroid/media/AudioService;)I

    move-result p1

    invoke-static {p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 46
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$5400(Landroid/media/AudioService;)I

    move-result p1

    invoke-static {v3, p1}, Landroid/media/AudioSystem;->setForceUse(II)I

    const/4 p1, 0x2

    .line 47
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$5400(Landroid/media/AudioService;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    const/4 p1, 0x4

    .line 48
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xb

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 49
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_5
    const/16 v0, 0xa

    if-ltz p1, :cond_7

    .line 50
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v1, v1, p1

    .line 51
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$5500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/2addr v4, v0

    invoke-static {p1, v3, v4}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 52
    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    .line 53
    :cond_7
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {p1}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    invoke-static {p1, v1, v3}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;IZ)V

    .line 54
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)V

    .line 55
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$5800(Landroid/media/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 56
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$5900(Landroid/media/AudioService;)V

    .line 57
    :cond_8
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 58
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$6100(Landroid/media/AudioService;)V

    .line 59
    :cond_9
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 60
    :try_start_6
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$6300(Landroid/media/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v0, v3

    :cond_a
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 61
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 62
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x3

    .line 63
    :try_start_7
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$6500(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v3, 0x8

    :cond_b
    invoke-static {v0, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 64
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string/jumbo p1, "restarting=false"

    .line 65
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_6

    :catchall_3
    move-exception v0

    .line 66
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_4
    move-exception p1

    .line 67
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p1

    :catchall_5
    move-exception v0

    .line 68
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    .line 69
    :pswitch_f
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {p1}, Landroid/media/AudioService;->getRingerMode()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_6

    .line 70
    :pswitch_10
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 71
    :cond_c
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "volume_master"

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-float p1, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr p1, v3

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_6

    .line 72
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioService$VolumeStreamState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Landroid/media/AudioService$AudioHandler;->persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    goto :goto_6

    .line 73
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioService$VolumeStreamState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Landroid/media/AudioService$AudioHandler;->setDeviceVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    goto :goto_6

    .line 74
    :cond_d
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 75
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    .line 76
    :cond_e
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Landroid/media/AudioService;->access$6700(Landroid/media/AudioService;IILjava/lang/String;)V

    .line 77
    iget-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_f
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
