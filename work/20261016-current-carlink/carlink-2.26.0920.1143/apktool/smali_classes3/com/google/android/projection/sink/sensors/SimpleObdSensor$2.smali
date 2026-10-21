.class Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/sensors/SimpleObdSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, "AT ST "

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$200(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Landroid/bluetooth/BluetoothSocket;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$200(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Landroid/bluetooth/BluetoothSocket;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$302(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$200(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Landroid/bluetooth/BluetoothSocket;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$402(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$500()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "Connected to OBD"

    .line 43
    .line 44
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$400(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/io/OutputStream;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "AT Z"

    .line 54
    .line 55
    invoke-static {v1, v2}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$600(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$300(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/io/InputStream;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$700(Ljava/io/InputStream;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$400(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/io/OutputStream;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "AT E0"

    .line 74
    .line 75
    invoke-static {v1, v2}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$600(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$300(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/io/InputStream;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$700(Ljava/io/InputStream;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 88
    .line 89
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$400(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/io/OutputStream;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "AT L0"

    .line 94
    .line 95
    invoke-static {v1, v2}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$600(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$300(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/io/InputStream;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$700(Ljava/io/InputStream;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$400(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/io/OutputStream;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/16 v0, 0x32

    .line 119
    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v1, v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$600(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$300(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/io/InputStream;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$700(Ljava/io/InputStream;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$400(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/io/OutputStream;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "AT SP 0"

    .line 150
    .line 151
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$600(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$300(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/io/InputStream;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$700(Ljava/io/InputStream;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$800(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 171
    .line 172
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1000(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-static {v1, v2}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$902(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Z)Z

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 180
    .line 181
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1200(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-static {v1, v2}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1102(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Z)Z

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 189
    .line 190
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1400(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-static {v1, v2}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1302(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Z)Z

    .line 195
    .line 196
    .line 197
    invoke-static {}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$500()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const-string v2, "Sensor discovery completed"

    .line 202
    .line 203
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 207
    .line 208
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1500(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/util/concurrent/CountDownLatch;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 213
    .line 214
    .line 215
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :try_start_2
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 217
    .line 218
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$000(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Landroid/os/Handler;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$2;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 223
    .line 224
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1600(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/lang/Runnable;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    const-wide/16 v2, 0x3e8

    .line 229
    .line 230
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :catchall_0
    move-exception v1

    .line 235
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    invoke-static {}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$500()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    const-string v2, "Can\'t connect"

    .line 243
    .line 244
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .line 246
    .line 247
    :goto_0
    return-void
.end method
