.class public Lcom/google/android/projection/sink/audio/AudioFocusManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AHU.AUDIO"


# instance fields
.field private volatile mCarCanDuck:Z

.field private volatile mCarGuidancePlaying:Z

.field private volatile mCarMusicPlaying:Z

.field private mCarPlayingHighPrioritySound:Z

.field private final mGal:Lcom/google/android/projection/sink/GalIntegration;

.field private final mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPhoneFocusEnabled:Z

.field private volatile mPhoneFocusState:I

.field private final mUseRestrictedMode:Z


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/GalIntegration;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mListeners:Ljava/util/LinkedList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusEnabled:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarPlayingHighPrioritySound:Z

    .line 16
    .line 17
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS:I

    .line 18
    .line 19
    iput v1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarMusicPlaying:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarGuidancePlaying:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarCanDuck:Z

    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 28
    .line 29
    iput-boolean p2, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mUseRestrictedMode:Z

    .line 30
    .line 31
    return-void
.end method

.method private notifyFocusStateToClients(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "notifyFOcusStateToClients "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "AHU.AUDIO"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mListeners:Ljava/util/LinkedList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;

    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarCanDuck:Z

    .line 39
    .line 40
    invoke-interface {v1, p1, v2}, Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;->onPhoneFocusChange(IZ)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method private setPhoneFocusState(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "set phone focus state:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "AHU.AUDIO"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/protocol/GalReceiver;->setAudioFocus(IZ)V

    .line 25
    .line 26
    .line 27
    iget p2, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 28
    .line 29
    if-eq p2, p1, :cond_0

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->notifyFocusStateToClients(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iput p1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized canCarContinueGuidance()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarPlayingHighPrioritySound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 10
    .line 11
    sget v2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN:I

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 16
    .line 17
    sget v2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_1
    monitor-exit p0

    .line 23
    return v1

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method

.method public declared-synchronized canCarContinueMusic()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarPlayingHighPrioritySound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarCanDuck:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return v2

    .line 16
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 17
    .line 18
    sget v3, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN:I

    .line 19
    .line 20
    if-eq v0, v3, :cond_2

    .line 21
    .line 22
    iget v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 23
    .line 24
    sget v3, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT:I

    .line 25
    .line 26
    if-eq v0, v3, :cond_2

    .line 27
    .line 28
    iget v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 29
    .line 30
    sget v3, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    .line 32
    if-eq v0, v3, :cond_2

    .line 33
    .line 34
    move v1, v2

    .line 35
    :cond_2
    monitor-exit p0

    .line 36
    return v1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0

    .line 39
    throw v0
.end method

.method public canPhonePlay(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne p1, v1, :cond_3

    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 10
    .line 11
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN:I

    .line 12
    .line 13
    if-eq p1, v1, :cond_2

    .line 14
    .line 15
    iget p1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 16
    .line 17
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT:I

    .line 18
    .line 19
    if-eq p1, v1, :cond_2

    .line 20
    .line 21
    iget p1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 22
    .line 23
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_MEDIA_ONLY:I

    .line 24
    .line 25
    if-eq p1, v1, :cond_2

    .line 26
    .line 27
    iget p1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 28
    .line 29
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK:I

    .line 30
    .line 31
    if-ne p1, v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v0, v2

    .line 35
    :cond_2
    :goto_0
    return v0

    .line 36
    :cond_3
    iget p1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 37
    .line 38
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN:I

    .line 39
    .line 40
    if-eq p1, v1, :cond_5

    .line 41
    .line 42
    iget p1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 43
    .line 44
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT:I

    .line 45
    .line 46
    if-eq p1, v1, :cond_5

    .line 47
    .line 48
    iget p1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 49
    .line 50
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY:I

    .line 51
    .line 52
    if-ne p1, v1, :cond_4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    move v0, v2

    .line 56
    :cond_5
    :goto_1
    return v0
.end method

.method public declared-synchronized disablePhoneFocus()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusEnabled:Z

    .line 4
    .line 5
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public declared-synchronized enablePhoneFocus()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusEnabled:Z

    .line 4
    .line 5
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN:I

    .line 6
    .line 7
    invoke-direct {p0, v1, v0}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public declared-synchronized handleAudioFocusRequest(I)V
    .locals 4

    .line 1
    const-string v0, "Unknown focus request "

    .line 2
    .line 3
    const-string v1, "onAudioFocusRequest, req:"

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v2, "AHU.AUDIO"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " highpriority:"

    .line 17
    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarPlayingHighPrioritySound:Z

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mUseRestrictedMode:Z

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusEnabled:Z

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_GAIN:I

    .line 43
    .line 44
    if-ne p1, v1, :cond_0

    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarMusicPlaying:Z

    .line 47
    .line 48
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_MEDIA_ONLY:I

    .line 49
    .line 50
    invoke-direct {p0, p1, v2}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarPlayingHighPrioritySound:Z

    .line 56
    .line 57
    if-nez v1, :cond_8

    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusEnabled:Z

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarCanDuck:Z

    .line 65
    .line 66
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_GAIN:I

    .line 67
    .line 68
    if-ne p1, v1, :cond_2

    .line 69
    .line 70
    iput-boolean v2, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarMusicPlaying:Z

    .line 71
    .line 72
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN:I

    .line 73
    .line 74
    invoke-direct {p0, p1, v2}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_GAIN_TRANSIENT:I

    .line 79
    .line 80
    if-ne p1, v1, :cond_4

    .line 81
    .line 82
    iput-boolean v2, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarMusicPlaying:Z

    .line 83
    .line 84
    iget-boolean p1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mUseRestrictedMode:Z

    .line 85
    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT:I

    .line 89
    .line 90
    invoke-direct {p0, p1, v2}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY:I

    .line 95
    .line 96
    invoke-direct {p0, p1, v2}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_GAIN_TRANSIENT_MAY_DUCK:I

    .line 101
    .line 102
    if-ne p1, v1, :cond_6

    .line 103
    .line 104
    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarCanDuck:Z

    .line 106
    .line 107
    iget-boolean p1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mUseRestrictedMode:Z

    .line 108
    .line 109
    if-nez p1, :cond_5

    .line 110
    .line 111
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT:I

    .line 112
    .line 113
    invoke-direct {p0, p1, v2}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY:I

    .line 118
    .line 119
    invoke-direct {p0, p1, v2}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_RELEASE:I

    .line 124
    .line 125
    if-ne p1, v1, :cond_7

    .line 126
    .line 127
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS:I

    .line 128
    .line 129
    invoke-direct {p0, p1, v2}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_7
    const-string v1, "AHU.AUDIO"

    .line 134
    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_8
    :goto_0
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS:I

    .line 152
    .line 153
    invoke-direct {p0, p1, v2}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 155
    .line 156
    :goto_1
    monitor-exit p0

    .line 157
    return-void

    .line 158
    :catchall_0
    move-exception p1

    .line 159
    monitor-exit p0

    .line 160
    throw p1
.end method

.method public isCarPlayingGuidance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarGuidancePlaying:Z

    return v0
.end method

.method public isCarPlayingHighPrioritySound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarPlayingHighPrioritySound:Z

    return v0
.end method

.method public isCarPlayingMusic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarMusicPlaying:Z

    return v0
.end method

.method public declared-synchronized notifyCarGuidancePlayEnd()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "AHU.AUDIO"

    .line 3
    .line 4
    const-string v1, "notifyCarGuidancePlayEnd"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarGuidancePlaying:Z

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarMusicPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_1
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0

    .line 28
    throw v0
.end method

.method public declared-synchronized notifyCarGuidancePlayStart(Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "AHU.AUDIO"

    .line 3
    .line 4
    const-string v1, "notifyCarGuidancePlayStart"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarGuidancePlaying:Z

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 13
    .line 14
    sget v2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    :try_start_1
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I

    .line 26
    .line 27
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    .line 34
    throw p1
.end method

.method public declared-synchronized notifyCarHighPrioritySoundEnd()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "AHU.AUDIO"

    .line 3
    .line 4
    const-string v1, "notifyCarHighPrioritySoundEnd"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarPlayingHighPrioritySound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public declared-synchronized notifyCarHighPrioritySoundStart()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "AHU.AUDIO"

    .line 3
    .line 4
    const-string v1, "notifyCarHighPrioritySoundStart"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarPlayingHighPrioritySound:Z

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 13
    .line 14
    sget v2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN:I

    .line 15
    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    iget v1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 19
    .line 20
    sget v2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT:I

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 25
    .line 26
    sget v2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK:I

    .line 27
    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusState:I

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->notifyFocusStateToClients(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I

    .line 38
    .line 39
    invoke-direct {p0, v1, v0}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    :goto_1
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0

    .line 46
    throw v0
.end method

.method public declared-synchronized notifyCarMusicPlayEnd()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "AHU.AUDIO"

    .line 3
    .line 4
    const-string v1, "notifyCarMusicPlayEnd"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarMusicPlaying:Z

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarGuidancePlaying:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {p0, v0, v1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :cond_0
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method

.method public declared-synchronized notifyCarMusicPlayStart()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "AHU.AUDIO"

    .line 3
    .line 4
    const-string v1, "notifyCarMusicPlayStart"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mCarMusicPlaying:Z

    .line 11
    .line 12
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS:I

    .line 13
    .line 14
    invoke-direct {p0, v1, v0}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0
.end method

.method public declared-synchronized registerFocusChangeListener(Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mListeners:Ljava/util/LinkedList;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized setTransientLossState(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK:I

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const-string v0, "AHU.AUDIO"

    .line 12
    .line 13
    const-string v2, "Unknown transient loss focus state requested: %d"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    aput-object p1, v3, v1

    .line 23
    .line 24
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->setPhoneFocusState(IZ)V

    .line 34
    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mPhoneFocusEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0

    .line 42
    throw p1
.end method

.method public declared-synchronized unregisterFocusChangeListener(Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioFocusManager;->mListeners:Ljava/util/LinkedList;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method
