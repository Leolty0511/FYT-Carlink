.class public final Lf/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/AudioSink$AudioListener;


# instance fields
.field public final b:Lcom/google/android/projection/sink/audio/AudioPlayer;

.field public final c:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;Lcom/google/android/projection/sink/audio/AudioPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lf/l;->b:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 5
    .line 6
    iput-object p1, p0, Lf/l;->c:Lcom/syu/carlink/auto/AutoFragment;

    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onAudioData(IJ[B)V
    .locals 2

    .line 1
    iget-object p2, p0, Lf/l;->b:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    int-to-long v0, p1

    .line 6
    invoke-virtual {p2, p1, v0, v1, p4}, Lcom/google/android/projection/sink/audio/AudioPlayer;->onAudioData(IJ[B)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final onCodecConfig([B)V
    .locals 2

    .line 1
    const-string v0, "AHU"

    .line 2
    .line 3
    const-string v1, "*****************************  onCodecConfig"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf/l;->b:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->onCodecConfig([B)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onSetUp(I)V
    .locals 2

    .line 1
    const-string v0, "*****************************  onSetUp mediaCodecType = "

    .line 2
    .line 3
    const-string v1, "AHU"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/app/m;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf/l;->b:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->onSetUp(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onShutdown()V
    .locals 2

    .line 1
    const-string v0, "AHU"

    .line 2
    .line 3
    const-string v1, "*****************************  onShutdown"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf/l;->b:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->onShutdown()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lf/l;->c:Lcom/syu/carlink/auto/AutoFragment;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->r:Landroid/media/AudioManager;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->t:Lf/a0;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 22
    .line 23
    .line 24
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 25
    .line 26
    const-string v1, " AAuto keyboardController -------->>  false : "

    .line 27
    .line 28
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final onStart(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "*****************************  onStart  appid : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->a()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "AHU"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lf/l;->b:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->onStart(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 p1, 0x2

    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "value"

    .line 39
    .line 40
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "sys.carlink.type"

    .line 44
    .line 45
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lf/l;->c:Lcom/syu/carlink/auto/AutoFragment;

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->a()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x1

    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->a()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-ne v0, v2, :cond_2

    .line 70
    .line 71
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Lg/b;->q:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/String;

    .line 84
    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    const-string v0, ""

    .line 88
    .line 89
    :cond_1
    const-string v3, "com.ex.dabplayer.pad"

    .line 90
    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    :cond_2
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Lcom/syu/carlink/CarLinkService;->j(Z)V

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {p1}, Lcom/syu/carlink/auto/AutoFragment;->e()V

    .line 107
    .line 108
    .line 109
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, v2, v1}, Lcom/syu/carlink/CarLinkService;->h(IZ)V

    .line 116
    .line 117
    .line 118
    :cond_4
    return-void
.end method

.method public final onStop(I)V
    .locals 2

    .line 1
    const-string v0, "AHU"

    .line 2
    .line 3
    const-string v1, "*****************************  onStop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf/l;->b:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->onStop(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
