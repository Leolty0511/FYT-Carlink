.class Landroid/hardware/camera2/legacy/RequestThreadManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mCleanup:Z

.field private final mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    .line 8
    .line 9
    new-instance p1, Landroid/hardware/camera2/legacy/LegacyResultMapper;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/hardware/camera2/legacy/LegacyResultMapper;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-boolean v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    iget v2, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const/4 v4, -0x1

    .line 14
    if-eq v2, v4, :cond_1b

    .line 15
    .line 16
    const-wide/16 v4, 0xfa0

    .line 17
    .line 18
    if-eq v2, v3, :cond_17

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    const/4 v7, 0x3

    .line 22
    if-eq v2, v6, :cond_5

    .line 23
    .line 24
    if-ne v2, v7, :cond_4

    .line 25
    .line 26
    iput-boolean v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    .line 27
    .line 28
    :try_start_0
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    invoke-virtual {v0, v4, v5, v2}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 43
    .line 44
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v2, "Timed out while queueing cleanup request."

    .line 49
    .line 50
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 54
    .line 55
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 65
    .line 66
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v4, "Interrupted while waiting for requests to complete: "

    .line 71
    .line 72
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 76
    .line 77
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_0
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 85
    .line 86
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/4 v2, 0x0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 94
    .line 95
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->quit()V

    .line 100
    .line 101
    .line 102
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 103
    .line 104
    invoke-static {v0, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$502(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 108
    .line 109
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 116
    .line 117
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 122
    .line 123
    .line 124
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 125
    .line 126
    invoke-static {v0, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1302(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 130
    .line 131
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v0, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$2000(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_f

    .line 139
    .line 140
    :cond_4
    new-instance v2, Ljava/lang/AssertionError;

    .line 141
    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v4, "Unhandled message "

    .line 145
    .line 146
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget v0, v0, Landroid/os/Message;->what:I

    .line 150
    .line 151
    const-string v4, " on RequestThread."

    .line 152
    .line 153
    invoke-static {v3, v0, v4}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    throw v2

    .line 161
    :cond_5
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 162
    .line 163
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 172
    .line 173
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$800(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-nez v2, :cond_8

    .line 182
    .line 183
    :try_start_1
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 184
    .line 185
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 190
    .line 191
    invoke-virtual {v2, v4, v5, v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_6

    .line 196
    .line 197
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 198
    .line 199
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    const-string v8, "Timed out while waiting for prior requests to complete."

    .line 204
    .line 205
    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 209
    .line 210
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    .line 216
    .line 217
    :cond_6
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 218
    .line 219
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    monitor-enter v2

    .line 224
    :try_start_2
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 225
    .line 226
    invoke-static {v8}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$800(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    invoke-virtual {v8}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    if-nez v8, :cond_7

    .line 235
    .line 236
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 237
    .line 238
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z

    .line 243
    .line 244
    .line 245
    monitor-exit v2

    .line 246
    goto/16 :goto_f

    .line 247
    .line 248
    :cond_7
    monitor-exit v2

    .line 249
    move-object v2, v8

    .line 250
    goto :goto_1

    .line 251
    :catchall_0
    move-exception v0

    .line 252
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    throw v0

    .line 254
    :catch_1
    move-exception v0

    .line 255
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 256
    .line 257
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    const-string v4, "Interrupted while waiting for requests to complete: "

    .line 262
    .line 263
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .line 265
    .line 266
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 267
    .line 268
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_f

    .line 276
    .line 277
    :cond_8
    :goto_1
    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->isQueueEmpty()Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_9

    .line 285
    .line 286
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 287
    .line 288
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setRequestQueueEmpty()V

    .line 293
    .line 294
    .line 295
    :cond_9
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->getBurstHolder()Landroid/hardware/camera2/legacy/BurstHolder;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->getFrameNumber()Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 304
    .line 305
    .line 306
    move-result-wide v8

    .line 307
    invoke-virtual {v6, v8, v9}, Landroid/hardware/camera2/legacy/BurstHolder;->produceRequestHolders(J)Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    const/4 v0, 0x0

    .line 316
    move v8, v3

    .line 317
    move v3, v0

    .line 318
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_16

    .line 323
    .line 324
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    move-object v15, v0

    .line 329
    check-cast v15, Landroid/hardware/camera2/legacy/RequestHolder;

    .line 330
    .line 331
    invoke-virtual {v15}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    iget-object v9, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 336
    .line 337
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    const-wide/16 v12, 0x0

    .line 342
    .line 343
    if-eqz v9, :cond_b

    .line 344
    .line 345
    iget-object v9, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 346
    .line 347
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 348
    .line 349
    .line 350
    move-result-object v9

    .line 351
    iget-object v9, v9, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 352
    .line 353
    if-eq v9, v0, :cond_a

    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_a
    const/4 v9, 0x0

    .line 357
    :goto_3
    move/from16 v16, v9

    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_b
    :goto_4
    iget-object v9, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 361
    .line 362
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    invoke-static {v9}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    .line 371
    .line 372
    .line 373
    move-result-object v9

    .line 374
    new-instance v10, Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 375
    .line 376
    iget-object v11, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 377
    .line 378
    invoke-static {v11}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 379
    .line 380
    .line 381
    move-result-object v11

    .line 382
    iget-object v14, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 383
    .line 384
    invoke-static {v14}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    .line 385
    .line 386
    .line 387
    move-result-object v14

    .line 388
    invoke-direct {v10, v11, v0, v9, v14}, Landroid/hardware/camera2/legacy/LegacyRequest;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)V

    .line 389
    .line 390
    .line 391
    invoke-static {v10}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 392
    .line 393
    .line 394
    iget-object v9, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 395
    .line 396
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    iget-object v11, v10, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    .line 401
    .line 402
    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->same(Landroid/hardware/Camera$Parameters;)Z

    .line 403
    .line 404
    .line 405
    move-result v9

    .line 406
    if-nez v9, :cond_c

    .line 407
    .line 408
    :try_start_3
    iget-object v9, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 409
    .line 410
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    iget-object v11, v10, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    .line 415
    .line 416
    invoke-virtual {v9, v11}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 417
    .line 418
    .line 419
    iget-object v9, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 420
    .line 421
    iget-object v11, v10, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    .line 422
    .line 423
    invoke-static {v9, v11}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1102(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 424
    .line 425
    .line 426
    move v9, v8

    .line 427
    goto :goto_5

    .line 428
    :catch_2
    move-exception v0

    .line 429
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 430
    .line 431
    invoke-static {v8}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    const-string v9, "Exception while setting camera parameters: "

    .line 436
    .line 437
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    .line 439
    .line 440
    invoke-virtual {v15}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 441
    .line 442
    .line 443
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 444
    .line 445
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v0, v15, v12, v13, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    .line 450
    .line 451
    .line 452
    goto/16 :goto_9

    .line 453
    .line 454
    :cond_c
    const/4 v9, 0x0

    .line 455
    :goto_5
    iget-object v11, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 456
    .line 457
    invoke-static {v11, v10}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1002(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 458
    .line 459
    .line 460
    goto :goto_3

    .line 461
    :goto_6
    :try_start_4
    iget-object v9, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 462
    .line 463
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 464
    .line 465
    .line 466
    move-result-object v9

    .line 467
    iget-object v10, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 468
    .line 469
    invoke-static {v10}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 470
    .line 471
    .line 472
    move-result-object v11

    .line 473
    const-wide/16 v17, 0xfa0

    .line 474
    .line 475
    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    .line 476
    .line 477
    move-object v10, v15

    .line 478
    move-wide v4, v12

    .line 479
    move-wide/from16 v12, v17

    .line 480
    .line 481
    :try_start_5
    invoke-virtual/range {v9 .. v14}, Landroid/hardware/camera2/legacy/CaptureCollector;->queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z

    .line 482
    .line 483
    .line 484
    move-result v8

    .line 485
    if-nez v8, :cond_d

    .line 486
    .line 487
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 488
    .line 489
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    const-string v8, "Timed out while queueing capture request."

    .line 494
    .line 495
    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    invoke-virtual {v15}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 499
    .line 500
    .line 501
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 502
    .line 503
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {v0, v15, v4, v5, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    .line 508
    .line 509
    .line 510
    goto/16 :goto_9

    .line 511
    .line 512
    :cond_d
    invoke-virtual {v15}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    .line 513
    .line 514
    .line 515
    move-result v8

    .line 516
    if-eqz v8, :cond_e

    .line 517
    .line 518
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 519
    .line 520
    invoke-static {v8, v15}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1400(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 521
    .line 522
    .line 523
    :cond_e
    invoke-virtual {v15}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    .line 524
    .line 525
    .line 526
    move-result v8

    .line 527
    if-eqz v8, :cond_10

    .line 528
    .line 529
    :goto_7
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 530
    .line 531
    invoke-static {v8}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 532
    .line 533
    .line 534
    move-result-object v8

    .line 535
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 536
    .line 537
    const-wide/16 v10, 0x3e8

    .line 538
    .line 539
    invoke-virtual {v8, v10, v11, v9}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z

    .line 540
    .line 541
    .line 542
    move-result v8

    .line 543
    if-nez v8, :cond_f

    .line 544
    .line 545
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 546
    .line 547
    invoke-static {v8}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v8

    .line 551
    const-string v9, "Timed out while waiting for preview requests to complete."

    .line 552
    .line 553
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .line 555
    .line 556
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 557
    .line 558
    invoke-static {v8}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 559
    .line 560
    .line 561
    move-result-object v8

    .line 562
    invoke-virtual {v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextPreview()V

    .line 563
    .line 564
    .line 565
    goto :goto_7

    .line 566
    :cond_f
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 567
    .line 568
    invoke-static {v8}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    .line 569
    .line 570
    .line 571
    move-result-object v8

    .line 572
    invoke-virtual {v8}, Landroid/os/ConditionVariable;->close()V

    .line 573
    .line 574
    .line 575
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 576
    .line 577
    invoke-static {v8, v15}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1500(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 578
    .line 579
    .line 580
    :cond_10
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 581
    .line 582
    invoke-static {v8}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1600(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .line 583
    .line 584
    .line 585
    move-result-object v8

    .line 586
    iget-object v9, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 587
    .line 588
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    .line 589
    .line 590
    .line 591
    move-result-object v9

    .line 592
    invoke-virtual {v8, v0, v9}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 593
    .line 594
    .line 595
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 596
    .line 597
    invoke-static {v8}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .line 598
    .line 599
    .line 600
    move-result-object v8

    .line 601
    iget-object v9, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 602
    .line 603
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    .line 604
    .line 605
    .line 606
    move-result-object v9

    .line 607
    invoke-virtual {v8, v0, v9}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v15}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    if-eqz v0, :cond_11

    .line 615
    .line 616
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 617
    .line 618
    invoke-static {v0, v15}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1800(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 619
    .line 620
    .line 621
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 622
    .line 623
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    const-wide/16 v8, 0xfa0

    .line 628
    .line 629
    invoke-virtual {v0, v8, v9}, Landroid/os/ConditionVariable;->block(J)Z

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    if-nez v0, :cond_11

    .line 634
    .line 635
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 636
    .line 637
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    const-string v8, "Hit timeout for jpeg callback!"

    .line 642
    .line 643
    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .line 645
    .line 646
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 647
    .line 648
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextJpeg()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7

    .line 653
    .line 654
    .line 655
    :cond_11
    if-eqz v16, :cond_12

    .line 656
    .line 657
    :try_start_6
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 658
    .line 659
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    .line 660
    .line 661
    .line 662
    move-result-object v8

    .line 663
    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 664
    .line 665
    .line 666
    move-result-object v8

    .line 667
    invoke-static {v0, v8}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1102(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 668
    .line 669
    .line 670
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 671
    .line 672
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    iget-object v8, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 677
    .line 678
    invoke-static {v8}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    .line 679
    .line 680
    .line 681
    move-result-object v8

    .line 682
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/legacy/LegacyRequest;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 683
    .line 684
    .line 685
    goto :goto_8

    .line 686
    :catch_3
    move-exception v0

    .line 687
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 688
    .line 689
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    const-string v4, "Received device exception: "

    .line 694
    .line 695
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    .line 697
    .line 698
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 699
    .line 700
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    const/4 v2, 0x1

    .line 705
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_c

    .line 709
    .line 710
    :cond_12
    :goto_8
    new-instance v0, Landroid/util/MutableLong;

    .line 711
    .line 712
    invoke-direct {v0, v4, v5}, Landroid/util/MutableLong;-><init>(J)V

    .line 713
    .line 714
    .line 715
    :try_start_7
    iget-object v4, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 716
    .line 717
    invoke-static {v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 718
    .line 719
    .line 720
    move-result-object v9

    .line 721
    const-wide/16 v11, 0xfa0

    .line 722
    .line 723
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 724
    .line 725
    move-object v10, v15

    .line 726
    move-object v14, v0

    .line 727
    invoke-virtual/range {v9 .. v14}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z

    .line 728
    .line 729
    .line 730
    move-result v4

    .line 731
    if-nez v4, :cond_13

    .line 732
    .line 733
    iget-object v4, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 734
    .line 735
    invoke-static {v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v4

    .line 739
    const-string v5, "Timed out while waiting for request to complete."

    .line 740
    .line 741
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .line 743
    .line 744
    iget-object v4, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 745
    .line 746
    invoke-static {v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 747
    .line 748
    .line 749
    move-result-object v4

    .line 750
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    .line 751
    .line 752
    .line 753
    :cond_13
    iget-object v4, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    .line 754
    .line 755
    iget-object v5, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 756
    .line 757
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 758
    .line 759
    .line 760
    move-result-object v5

    .line 761
    iget-wide v8, v0, Landroid/util/MutableLong;->value:J

    .line 762
    .line 763
    invoke-virtual {v4, v5, v8, v9}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->cachedConvertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;J)Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    iget-object v4, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 768
    .line 769
    invoke-static {v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    invoke-virtual {v4, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 774
    .line 775
    .line 776
    iget-object v4, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 777
    .line 778
    invoke-static {v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1600(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    iget-object v5, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 783
    .line 784
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    invoke-virtual {v4, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v15}, Landroid/hardware/camera2/legacy/RequestHolder;->requestFailed()Z

    .line 792
    .line 793
    .line 794
    move-result v4

    .line 795
    if-nez v4, :cond_14

    .line 796
    .line 797
    iget-object v4, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 798
    .line 799
    invoke-static {v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 800
    .line 801
    .line 802
    move-result-object v4

    .line 803
    invoke-virtual {v4, v15, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    .line 804
    .line 805
    .line 806
    :cond_14
    invoke-virtual {v15}, Landroid/hardware/camera2/legacy/RequestHolder;->isOutputAbandoned()Z

    .line 807
    .line 808
    .line 809
    move-result v0

    .line 810
    if-eqz v0, :cond_15

    .line 811
    .line 812
    const/4 v0, 0x1

    .line 813
    move v3, v0

    .line 814
    :cond_15
    :goto_9
    const/4 v8, 0x1

    .line 815
    const-wide/16 v4, 0xfa0

    .line 816
    .line 817
    goto/16 :goto_2

    .line 818
    .line 819
    :catch_4
    move-exception v0

    .line 820
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 821
    .line 822
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v2

    .line 826
    const-string v4, "Interrupted waiting for request completion: "

    .line 827
    .line 828
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    .line 830
    .line 831
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 832
    .line 833
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    const/4 v2, 0x1

    .line 838
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 839
    .line 840
    .line 841
    goto :goto_c

    .line 842
    :catch_5
    move-exception v0

    .line 843
    const/4 v8, 0x1

    .line 844
    goto :goto_a

    .line 845
    :catch_6
    move-exception v0

    .line 846
    const/4 v8, 0x1

    .line 847
    goto :goto_b

    .line 848
    :catch_7
    move-exception v0

    .line 849
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 850
    .line 851
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v2

    .line 855
    const-string v4, "Received device exception during capture call: "

    .line 856
    .line 857
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    .line 859
    .line 860
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 861
    .line 862
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    const/4 v2, 0x1

    .line 867
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 868
    .line 869
    .line 870
    goto :goto_c

    .line 871
    :catch_8
    move-exception v0

    .line 872
    :goto_a
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 873
    .line 874
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    const-string v4, "Interrupted during capture: "

    .line 879
    .line 880
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 881
    .line 882
    .line 883
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 884
    .line 885
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 890
    .line 891
    .line 892
    goto :goto_c

    .line 893
    :catch_9
    move-exception v0

    .line 894
    :goto_b
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 895
    .line 896
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v2

    .line 900
    const-string v4, "Received device exception during capture call: "

    .line 901
    .line 902
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 903
    .line 904
    .line 905
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 906
    .line 907
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 912
    .line 913
    .line 914
    :cond_16
    :goto_c
    if-eqz v3, :cond_1a

    .line 915
    .line 916
    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/BurstHolder;->isRepeating()Z

    .line 917
    .line 918
    .line 919
    move-result v0

    .line 920
    if-eqz v0, :cond_1a

    .line 921
    .line 922
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 923
    .line 924
    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    .line 925
    .line 926
    .line 927
    move-result v2

    .line 928
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->cancelRepeating(I)J

    .line 929
    .line 930
    .line 931
    move-result-wide v2

    .line 932
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 933
    .line 934
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    .line 939
    .line 940
    .line 941
    move-result v4

    .line 942
    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setRepeatingRequestError(JI)V

    .line 943
    .line 944
    .line 945
    goto :goto_e

    .line 946
    :cond_17
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 947
    .line 948
    check-cast v0, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    .line 949
    .line 950
    iget-object v2, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    .line 951
    .line 952
    if-eqz v2, :cond_18

    .line 953
    .line 954
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 955
    .line 956
    .line 957
    move-result v2

    .line 958
    goto :goto_d

    .line 959
    :cond_18
    const/4 v2, 0x0

    .line 960
    :goto_d
    iget-object v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 961
    .line 962
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    new-instance v4, Ljava/lang/StringBuilder;

    .line 967
    .line 968
    const-string v5, "Configure outputs: "

    .line 969
    .line 970
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    const-string v2, " surfaces configured."

    .line 977
    .line 978
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v2

    .line 985
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    .line 987
    .line 988
    :try_start_8
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 989
    .line 990
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 995
    .line 996
    const-wide/16 v4, 0xfa0

    .line 997
    .line 998
    invoke-virtual {v2, v4, v5, v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    .line 999
    .line 1000
    .line 1001
    move-result v2

    .line 1002
    if-nez v2, :cond_19

    .line 1003
    .line 1004
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 1005
    .line 1006
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    const-string v3, "Timed out while queueing configure request."

    .line 1011
    .line 1012
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    .line 1014
    .line 1015
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 1016
    .line 1017
    invoke-static {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_a

    .line 1022
    .line 1023
    .line 1024
    :cond_19
    iget-object v2, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 1025
    .line 1026
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    .line 1027
    .line 1028
    invoke-static {v2, v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$600(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    .line 1029
    .line 1030
    .line 1031
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    .line 1032
    .line 1033
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1034
    .line 1035
    .line 1036
    :cond_1a
    :goto_e
    const/4 v3, 0x1

    .line 1037
    goto :goto_f

    .line 1038
    :catch_a
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 1039
    .line 1040
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    const-string v2, "Interrupted while waiting for requests to complete."

    .line 1045
    .line 1046
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    .line 1048
    .line 1049
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 1050
    .line 1051
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    const/4 v3, 0x1

    .line 1056
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 1057
    .line 1058
    .line 1059
    :cond_1b
    :goto_f
    return v3
.end method
