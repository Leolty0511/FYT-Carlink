.class public Lcom/google/android/projection/sink/audio/NativeMusicPlayer;
.super Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;
.source "SourceFile"


# instance fields
.field private mStopping:Z


# direct methods
.method private constructor <init>(Lcom/google/android/projection/sink/audio/AudioFocusManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;-><init>(Lcom/google/android/projection/sink/audio/AudioFocusManager;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/projection/sink/audio/NativeMusicPlayer;->mStopping:Z

    .line 6
    .line 7
    return-void
.end method

.method public static createMusicPlayer(Landroid/content/Context;Lcom/google/android/projection/sink/audio/AudioFocusManager;I)Lcom/google/android/projection/sink/audio/NativeMusicPlayer;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/sink/audio/NativeMusicPlayer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/projection/sink/audio/NativeMusicPlayer;-><init>(Lcom/google/android/projection/sink/audio/AudioFocusManager;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p0, p2, p1}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->init(Landroid/content/Context;IZ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public onPhoneFocusChange(IZ)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_4

    .line 4
    .line 5
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_MEDIA_ONLY:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->isPlaying()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->doDuck()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->pause()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    sget p2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS:I

    .line 31
    .line 32
    if-ne p1, p2, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->isPlaying()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->undoDuck()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->resume()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    sget p2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY:I

    .line 48
    .line 49
    if-ne p1, p2, :cond_5

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->isPlaying()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->doDuck()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/projection/sink/audio/NativeMusicPlayer;->mStopping:Z

    .line 62
    .line 63
    if-nez p1, :cond_5

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeMusicPlayer;->stop()V

    .line 66
    .line 67
    .line 68
    :cond_5
    :goto_1
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->isPlaying()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->getAudioFocusManager()Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->notifyCarMusicPlayStart()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->play()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->isPlaying()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/NativeMusicPlayer;->mStopping:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->getAudioFocusManager()Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->notifyCarMusicPlayEnd()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->stop()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/NativeMusicPlayer;->mStopping:Z

    .line 22
    .line 23
    return-void
.end method
