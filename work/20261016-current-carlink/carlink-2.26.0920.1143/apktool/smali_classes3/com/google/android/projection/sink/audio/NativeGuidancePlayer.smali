.class public Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;
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
    iput-boolean p1, p0, Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;->mStopping:Z

    .line 6
    .line 7
    return-void
.end method

.method public static createGuidancePlayer(Landroid/content/Context;Lcom/google/android/projection/sink/audio/AudioFocusManager;I)Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;-><init>(Lcom/google/android/projection/sink/audio/AudioFocusManager;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p0, p2, p1}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->init(Landroid/content/Context;IZ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public onPhoneFocusChange(IZ)V
    .locals 0

    .line 1
    sget p2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN:I

    .line 2
    .line 3
    if-eq p1, p2, :cond_0

    .line 4
    .line 5
    sget p2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT:I

    .line 6
    .line 7
    if-ne p1, p2, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;->mStopping:Z

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;->stop()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public play()V
    .locals 2

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
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->notifyCarGuidancePlayStart(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->play()V

    .line 16
    .line 17
    .line 18
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
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;->mStopping:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->getAudioFocusManager()Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->notifyCarGuidancePlayEnd()V

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
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/NativeGuidancePlayer;->mStopping:Z

    .line 22
    .line 23
    return-void
.end method
