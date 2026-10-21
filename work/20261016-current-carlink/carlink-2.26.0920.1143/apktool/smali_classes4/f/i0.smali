.class public final Lf/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i0;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lf/i0;->a:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 11

    .line 1
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 2
    .line 3
    const-string v1, "***************************** TTS onStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf/i0;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 9
    .line 10
    iget v1, v1, Lcom/syu/carlink/auto/AutoFragment;->H:I

    .line 11
    .line 12
    iget-object v2, p0, Lf/i0;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 13
    .line 14
    iget-boolean v2, v2, Lcom/syu/carlink/auto/AutoFragment;->G:Z

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;->ACTIVE:Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;->getNumber()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    sget-object v2, Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;->REROUTING:Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;->getNumber()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    :cond_0
    move v1, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v1, v3

    .line 39
    :goto_0
    iput-boolean v1, p0, Lf/i0;->a:Z

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "******mNavStatus : "

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lf/i0;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 49
    .line 50
    iget v2, v2, Lcom/syu/carlink/auto/AutoFragment;->H:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, " mIsVoiceSession :"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lf/i0;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 61
    .line 62
    iget-boolean v2, v2, Lcom/syu/carlink/auto/AutoFragment;->G:Z

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " isNavigation:"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-boolean v2, p0, Lf/i0;->a:Z

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-boolean v0, p0, Lf/i0;->a:Z

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    iget-object v0, p0, Lf/i0;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 89
    .line 90
    iget v1, v0, Lcom/syu/carlink/auto/AutoFragment;->u:I

    .line 91
    .line 92
    const/4 v2, 0x3

    .line 93
    if-ne v1, v2, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->C()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const/4 v5, 0x2

    .line 103
    if-ne v1, v5, :cond_3

    .line 104
    .line 105
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->r:Landroid/media/AudioManager;

    .line 106
    .line 107
    iget-object v5, v0, Lcom/syu/carlink/auto/AutoFragment;->v:Lf/g0;

    .line 108
    .line 109
    const/4 v6, 0x5

    .line 110
    invoke-virtual {v1, v5, v6, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    iput v1, v0, Lcom/syu/carlink/auto/AutoFragment;->u:I

    .line 115
    .line 116
    :cond_3
    :goto_1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v5, v0, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    .line 123
    .line 124
    const/4 v6, 0x0

    .line 125
    const/16 v7, 0x9d

    .line 126
    .line 127
    new-array v8, v4, [I

    .line 128
    .line 129
    aput v4, v8, v3

    .line 130
    .line 131
    const/4 v9, 0x0

    .line 132
    const/4 v10, 0x0

    .line 133
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {v5 .. v10}, Lo/e;->c(II[I[F[Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    return-void
.end method

.method public final onStop()V
    .locals 8

    .line 1
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 2
    .line 3
    const-string v1, "***************************** TTS onStop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "******mNavStatus : "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lf/i0;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 16
    .line 17
    iget v2, v2, Lcom/syu/carlink/auto/AutoFragment;->H:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " mIsVoiceSession :"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lf/i0;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 28
    .line 29
    iget-boolean v2, v2, Lcom/syu/carlink/auto/AutoFragment;->G:Z

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, " isNavigation:"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-boolean v2, p0, Lf/i0;->a:Z

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-boolean v0, p0, Lf/i0;->a:Z

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lf/i0;->a:Z

    .line 57
    .line 58
    iget-object v1, p0, Lf/i0;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 59
    .line 60
    iget v2, v1, Lcom/syu/carlink/auto/AutoFragment;->u:I

    .line 61
    .line 62
    const/4 v3, -0x1

    .line 63
    if-ne v2, v3, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->C()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/4 v4, 0x2

    .line 73
    if-ne v2, v4, :cond_1

    .line 74
    .line 75
    iget-object v2, v1, Lcom/syu/carlink/auto/AutoFragment;->r:Landroid/media/AudioManager;

    .line 76
    .line 77
    iget-object v4, v1, Lcom/syu/carlink/auto/AutoFragment;->v:Lf/g0;

    .line 78
    .line 79
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 80
    .line 81
    .line 82
    :cond_1
    iput v3, v1, Lcom/syu/carlink/auto/AutoFragment;->u:I

    .line 83
    .line 84
    :goto_0
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v2, v1, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    const/16 v4, 0x9d

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    new-array v5, v1, [I

    .line 97
    .line 98
    aput v0, v5, v0

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {v2 .. v7}, Lo/e;->c(II[I[F[Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void
.end method
