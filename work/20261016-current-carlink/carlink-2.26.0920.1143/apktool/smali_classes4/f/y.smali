.class public final Lf/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;


# instance fields
.field public final synthetic a:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;)V
    .locals 0

    iput-object p1, p0, Lf/y;->a:Lcom/syu/carlink/auto/AutoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatteryStatusNotification(IIZ)V
    .locals 2

    .line 1
    const-string p3, "Battery status: "

    .line 2
    .line 3
    const-string v0, " percent remaining/"

    .line 4
    .line 5
    const-string v1, " seconds remaining"

    .line 6
    .line 7
    invoke-static {p3, p1, v0, p2, v1}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "AHU.MAIN_ACTIVITY"

    .line 12
    .line 13
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onDisconnected(Lcom/google/android/projection/protocol/Transport$StopReason;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Shutting down GAL/transport: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lf/y;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/google/android/projection/sink/GalIntegration;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/syu/carlink/auto/AutoFragment;->onDisconnected()V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lf/k;->y:Lf/k;

    .line 31
    .line 32
    const-wide/16 v1, 0xc8

    .line 33
    .line 34
    invoke-virtual {p1, v1, v2}, Lf/k;->e(J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/syu/carlink/auto/AutoFragment;->c()V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lf/k;->y:Lf/k;

    .line 41
    .line 42
    iget v0, p1, Lf/k;->h:I

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    if-eq v0, v1, :cond_0

    .line 46
    .line 47
    iget-object p1, p1, Lf/k;->j:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Landroid/content/Intent;

    .line 54
    .line 55
    const-string v1, "usb-disconnect"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public final onNavigationFocusRequest(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "=====>>  onNavigationFocusRequest: "

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
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lf/y;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lf/c;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lf/c;-><init>(Lf/y;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onPoorWirelessNetworkConnectivity()V
    .locals 2

    .line 1
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 2
    .line 3
    const-string v1, "Wireless connectivity is poor"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onUnrecoverableError(Lcom/google/android/projection/proto/Protos$MessageStatus;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Received unrecoverable error "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ". Shutting down."

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lf/y;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 28
    .line 29
    sget-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->CONNECTION_ERROR:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/google/android/projection/sink/GalIntegration;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onVoiceSessionNotification(I)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onVoiceSessionNotification, state:"

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
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lf/y;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 21
    .line 22
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->VOICE_RECOGNITION_STATE_STARTED:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    if-ne p1, v1, :cond_0

    .line 27
    .line 28
    move p1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p1, v3

    .line 31
    :goto_0
    iput-boolean p1, v0, Lcom/syu/carlink/auto/AutoFragment;->G:Z

    .line 32
    .line 33
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->l()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_6

    .line 40
    .line 41
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p1, p1, Lg/b;->x:Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    iget-object v0, p0, Lf/y;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 50
    .line 51
    iget-boolean v0, v0, Lcom/syu/carlink/auto/AutoFragment;->G:Z

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lf/y;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 61
    .line 62
    iget-boolean p1, p1, Lcom/syu/carlink/auto/AutoFragment;->G:Z

    .line 63
    .line 64
    const/4 v0, 0x2

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p0, Lf/y;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 68
    .line 69
    iget v1, p1, Lcom/syu/carlink/auto/AutoFragment;->w:I

    .line 70
    .line 71
    if-ne v1, v0, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->C()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-ne v1, v0, :cond_2

    .line 81
    .line 82
    iget-object v1, p1, Lcom/syu/carlink/auto/AutoFragment;->r:Landroid/media/AudioManager;

    .line 83
    .line 84
    iget-object v4, p1, Lcom/syu/carlink/auto/AutoFragment;->x:Lf/h0;

    .line 85
    .line 86
    invoke-virtual {v1, v4, v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput v0, p1, Lcom/syu/carlink/auto/AutoFragment;->w:I

    .line 91
    .line 92
    :cond_2
    :goto_1
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object v4, p1, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    const/16 v6, 0x9c

    .line 102
    .line 103
    new-array v7, v2, [I

    .line 104
    .line 105
    aput v2, v7, v3

    .line 106
    .line 107
    const/4 v8, 0x0

    .line 108
    const/4 v9, 0x0

    .line 109
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {v4 .. v9}, Lo/e;->c(II[I[F[Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    iget-object p1, p0, Lf/y;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 117
    .line 118
    iget v1, p1, Lcom/syu/carlink/auto/AutoFragment;->w:I

    .line 119
    .line 120
    const/4 v4, -0x1

    .line 121
    if-ne v1, v4, :cond_4

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->C()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-ne v1, v0, :cond_5

    .line 131
    .line 132
    iget-object v0, p1, Lcom/syu/carlink/auto/AutoFragment;->r:Landroid/media/AudioManager;

    .line 133
    .line 134
    iget-object v1, p1, Lcom/syu/carlink/auto/AutoFragment;->x:Lf/h0;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 137
    .line 138
    .line 139
    :cond_5
    iput v4, p1, Lcom/syu/carlink/auto/AutoFragment;->w:I

    .line 140
    .line 141
    :goto_2
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object v4, p1, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    const/16 v6, 0x9c

    .line 151
    .line 152
    new-array v7, v2, [I

    .line 153
    .line 154
    aput v3, v7, v3

    .line 155
    .line 156
    const/4 v8, 0x0

    .line 157
    const/4 v9, 0x0

    .line 158
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-virtual/range {v4 .. v9}, Lo/e;->c(II[I[F[Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    :goto_3
    return-void
.end method
