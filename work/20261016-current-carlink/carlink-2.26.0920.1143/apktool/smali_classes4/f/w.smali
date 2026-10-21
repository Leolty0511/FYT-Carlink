.class public final Lf/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;)V
    .locals 0

    iput-object p1, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 2
    .line 3
    const-string v1, "Transport disconnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 16
    .line 17
    const-string v2, "shutdown renderer"

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->stop()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 30
    .line 31
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->I:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->stop()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 43
    .line 44
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->I:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 45
    .line 46
    :cond_1
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 47
    .line 48
    const-string v2, "shutdown media audio"

    .line 49
    .line 50
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->D:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->tearDown()V

    .line 58
    .line 59
    .line 60
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 61
    .line 62
    const-string v2, "shutdown tts audio"

    .line 63
    .line 64
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->E:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->setCallback(Lcom/google/android/projection/sink/audio/AudioPlayer$Callback;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->E:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->tearDown()V

    .line 79
    .line 80
    .line 81
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 82
    .line 83
    const-string v2, "shutdown system audio"

    .line 84
    .line 85
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->F:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->tearDown()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->b:Ljava/lang/Object;

    .line 98
    .line 99
    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v2, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 103
    .line 104
    if-eqz v2, :cond_2

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/google/android/projection/sink/GalIntegration;->destroy()V

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 110
    .line 111
    iput-object v1, v2, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 112
    .line 113
    :cond_2
    iget-object v2, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 114
    .line 115
    iput-object v1, v2, Lcom/syu/carlink/auto/AutoFragment;->d:Lcom/google/android/projection/protocol/Transport;

    .line 116
    .line 117
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    sget-object v0, Lf/k;->y:Lf/k;

    .line 119
    .line 120
    iget v0, v0, Lf/k;->h:I

    .line 121
    .line 122
    const/4 v3, 0x2

    .line 123
    if-ne v0, v3, :cond_4

    .line 124
    .line 125
    iget-object v0, v2, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    const/4 v1, 0x4

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->j:Landroid/view/View;

    .line 136
    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    const/16 v1, 0x8

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    iget-object v0, v2, Lcom/syu/carlink/auto/AutoFragment;->k:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 146
    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->shutdown()V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 153
    .line 154
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->k:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 155
    .line 156
    :cond_5
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->y:Landroid/content/BroadcastReceiver;

    .line 159
    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    sget-object v2, Lf/k;->y:Lf/k;

    .line 163
    .line 164
    iget-object v2, v2, Lf/k;->j:Landroid/content/Context;

    .line 165
    .line 166
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 170
    .line 171
    iput-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->y:Landroid/content/BroadcastReceiver;

    .line 172
    .line 173
    :cond_6
    iget-object v0, p0, Lf/w;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/syu/carlink/auto/AutoFragment;->c()V

    .line 176
    .line 177
    .line 178
    :cond_7
    :goto_0
    return-void

    .line 179
    :catchall_0
    move-exception v1

    .line 180
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    throw v1
.end method
