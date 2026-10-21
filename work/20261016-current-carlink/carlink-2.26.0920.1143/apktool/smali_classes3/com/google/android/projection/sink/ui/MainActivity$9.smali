.class Lcom/google/android/projection/sink/ui/MainActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/MainActivity;->onDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

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
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$800(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 17
    .line 18
    const-string v1, "shutdown renderer"

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$800(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->stop()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2200(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2200(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->stop()V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2300(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 58
    .line 59
    const-string v1, "shutdown media audio"

    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2300(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->tearDown()V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2400(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 82
    .line 83
    const-string v1, "shutdown tts audio"

    .line 84
    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2400(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->tearDown()V

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2500(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 106
    .line 107
    const-string v1, "shutdown system audio"

    .line 108
    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2500(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->tearDown()V

    .line 119
    .line 120
    .line 121
    :cond_4
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$600(Lcom/google/android/projection/sink/ui/MainActivity;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 129
    .line 130
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const/4 v2, 0x0

    .line 135
    if-eqz v1, :cond_5

    .line 136
    .line 137
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 138
    .line 139
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lcom/google/android/projection/sink/GalIntegration;->destroy()V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 147
    .line 148
    invoke-static {v1, v2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$702(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/sink/GalIntegration;)Lcom/google/android/projection/sink/GalIntegration;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 152
    .line 153
    invoke-static {v1, v2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1302(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/protocol/Transport;)Lcom/google/android/projection/protocol/Transport;

    .line 154
    .line 155
    .line 156
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$100(Lcom/google/android/projection/sink/ui/MainActivity;)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    const/4 v1, 0x2

    .line 164
    if-ne v0, v1, :cond_7

    .line 165
    .line 166
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 167
    .line 168
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1500(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/view/SurfaceView;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1500(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/view/SurfaceView;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const/4 v1, 0x4

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    :cond_6
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 185
    .line 186
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$500(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_7
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2600(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-eqz v0, :cond_8

    .line 197
    .line 198
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2600(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->shutdown()V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 208
    .line 209
    invoke-static {v0, v2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2602(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/sink/sensors/SensorManager;)Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 210
    .line 211
    .line 212
    :cond_8
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 213
    .line 214
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-nez v0, :cond_a

    .line 219
    .line 220
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 221
    .line 222
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2700(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/content/BroadcastReceiver;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-eqz v0, :cond_9

    .line 227
    .line 228
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 229
    .line 230
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2700(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/content/BroadcastReceiver;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 238
    .line 239
    invoke-static {v0, v2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2702(Lcom/google/android/projection/sink/ui/MainActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 240
    .line 241
    .line 242
    :cond_9
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$9;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 243
    .line 244
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 245
    .line 246
    .line 247
    :cond_a
    :goto_0
    return-void

    .line 248
    :catchall_0
    move-exception v1

    .line 249
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    throw v1
.end method
