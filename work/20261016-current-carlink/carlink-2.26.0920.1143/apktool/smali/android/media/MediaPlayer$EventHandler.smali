.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p1, "MediaPlayer"

    .line 14
    .line 15
    const-string/jumbo v0, "mediaplayer went away with unhandled events"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    const/16 v1, 0x63

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eq v0, v1, :cond_19

    .line 28
    .line 29
    const/16 v1, 0x64

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-eq v0, v1, :cond_16

    .line 33
    .line 34
    const/16 v4, 0xd2

    .line 35
    .line 36
    if-eq v0, v4, :cond_11

    .line 37
    .line 38
    const/16 v4, -0x3f2

    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    packed-switch v0, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    packed-switch v0, :pswitch_data_1

    .line 45
    .line 46
    .line 47
    const-string v0, "MediaPlayer"

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "Unknown message type "

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget p1, p1, Landroid/os/Message;->what:I

    .line 57
    .line 58
    invoke-static {v1, p1, v0}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_0
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 63
    .line 64
    invoke-static {p1}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_7

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 76
    .line 77
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    iget p1, p1, Landroid/os/Message;->what:I

    .line 84
    .line 85
    const/4 v1, 0x7

    .line 86
    if-ne p1, v1, :cond_1

    .line 87
    .line 88
    move v3, v5

    .line 89
    :cond_1
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 95
    .line 96
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 103
    .line 104
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 105
    .line 106
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 107
    .line 108
    invoke-interface {v0, v1, v2, p1}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void

    .line 112
    :pswitch_3
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 113
    .line 114
    invoke-static {p1}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_3

    .line 119
    .line 120
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 121
    .line 122
    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :pswitch_4
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 126
    .line 127
    invoke-static {p1}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    return-void

    .line 139
    :pswitch_5
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 140
    .line 141
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_5

    .line 146
    .line 147
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 148
    .line 149
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 150
    .line 151
    invoke-interface {v0, v1, p1}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 152
    .line 153
    .line 154
    :cond_5
    return-void

    .line 155
    :pswitch_6
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 156
    .line 157
    const-string/jumbo v0, "stop"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->fytNotifyService(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 164
    .line 165
    invoke-static {p1}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 170
    .line 171
    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 175
    .line 176
    invoke-static {p1}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_6

    .line 181
    .line 182
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 183
    .line 184
    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 188
    .line 189
    invoke-static {p1, v3}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;Z)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :pswitch_7
    :try_start_0
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 194
    .line 195
    invoke-static {p1}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :catch_0
    invoke-virtual {p0, v1, v5, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    .line 205
    .line 206
    :goto_0
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 207
    .line 208
    invoke-static {p1}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    if-eqz p1, :cond_7

    .line 213
    .line 214
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 215
    .line 216
    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 217
    .line 218
    .line 219
    :cond_7
    :goto_1
    :pswitch_8
    return-void

    .line 220
    :pswitch_9
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 221
    .line 222
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-nez v0, :cond_8

    .line 227
    .line 228
    return-void

    .line 229
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    .line 231
    instance-of v1, p1, Landroid/os/Parcel;

    .line 232
    .line 233
    if-eqz v1, :cond_9

    .line 234
    .line 235
    check-cast p1, Landroid/os/Parcel;

    .line 236
    .line 237
    invoke-static {p1}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 245
    .line 246
    invoke-interface {v0, p1, v1}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    .line 247
    .line 248
    .line 249
    :cond_9
    return-void

    .line 250
    :pswitch_a
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 251
    .line 252
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    if-nez v0, :cond_a

    .line 257
    .line 258
    return-void

    .line 259
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    .line 261
    instance-of v1, p1, Landroid/os/Parcel;

    .line 262
    .line 263
    if-eqz v1, :cond_b

    .line 264
    .line 265
    check-cast p1, Landroid/os/Parcel;

    .line 266
    .line 267
    new-instance v1, Landroid/media/SubtitleData;

    .line 268
    .line 269
    invoke-direct {v1, p1}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 276
    .line 277
    invoke-interface {v0, p1, v1}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    .line 278
    .line 279
    .line 280
    :cond_b
    return-void

    .line 281
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 282
    .line 283
    const/16 v6, 0x322

    .line 284
    .line 285
    if-eq v0, v6, :cond_d

    .line 286
    .line 287
    const/16 v1, 0x323

    .line 288
    .line 289
    if-eq v0, v1, :cond_e

    .line 290
    .line 291
    packed-switch v0, :pswitch_data_2

    .line 292
    .line 293
    .line 294
    goto :goto_3

    .line 295
    :pswitch_c
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 296
    .line 297
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    if-eqz v0, :cond_f

    .line 302
    .line 303
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 304
    .line 305
    const/16 v2, 0x2bd

    .line 306
    .line 307
    if-ne v1, v2, :cond_c

    .line 308
    .line 309
    move v3, v5

    .line 310
    :cond_c
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :pswitch_d
    const-string v0, "MediaPlayer"

    .line 315
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v2, "Info ("

    .line 319
    .line 320
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 324
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v2, ","

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 334
    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v2, ")"

    .line 339
    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_d
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 352
    .line 353
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 354
    .line 355
    .line 356
    goto :goto_2

    .line 357
    :catch_1
    invoke-virtual {p0, v1, v5, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    .line 363
    .line 364
    :cond_e
    :goto_2
    iput v6, p1, Landroid/os/Message;->arg1:I

    .line 365
    .line 366
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 367
    .line 368
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    if-eqz v0, :cond_f

    .line 373
    .line 374
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 375
    .line 376
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    .line 381
    .line 382
    .line 383
    :cond_f
    :goto_3
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 384
    .line 385
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    if-eqz v0, :cond_10

    .line 390
    .line 391
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 392
    .line 393
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 394
    .line 395
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 396
    .line 397
    invoke-interface {v0, v1, v2, p1}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 398
    .line 399
    .line 400
    :cond_10
    return-void

    .line 401
    :cond_11
    const-string v0, "MediaPlayer"

    .line 402
    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string v3, "MEDIA_DRM_INFO "

    .line 406
    .line 407
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 411
    .line 412
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    .line 428
    if-nez v0, :cond_12

    .line 429
    .line 430
    const-string p1, "MediaPlayer"

    .line 431
    .line 432
    const-string v0, "MEDIA_DRM_INFO msg.obj=NULL"

    .line 433
    .line 434
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    goto :goto_4

    .line 438
    :cond_12
    instance-of v0, v0, Landroid/os/Parcel;

    .line 439
    .line 440
    if-eqz v0, :cond_14

    .line 441
    .line 442
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 443
    .line 444
    invoke-static {p1}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    monitor-enter v0

    .line 449
    :try_start_2
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 450
    .line 451
    invoke-static {p1}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    if-eqz p1, :cond_13

    .line 456
    .line 457
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 458
    .line 459
    invoke-static {p1}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    if-eqz p1, :cond_13

    .line 464
    .line 465
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 466
    .line 467
    invoke-static {p1}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    invoke-static {p1}, Landroid/media/MediaPlayer$DrmInfo;->access$1300(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    :cond_13
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 476
    .line 477
    invoke-static {p1}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    if-eqz p1, :cond_15

    .line 483
    .line 484
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->notifyClient(Landroid/media/MediaPlayer$DrmInfo;)V

    .line 485
    .line 486
    .line 487
    goto :goto_4

    .line 488
    :catchall_0
    move-exception p1

    .line 489
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 490
    throw p1

    .line 491
    :cond_14
    const-string v0, "MediaPlayer"

    .line 492
    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    const-string v2, "MEDIA_DRM_INFO msg.obj of unexpected type "

    .line 496
    .line 497
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    .line 502
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    :cond_15
    :goto_4
    return-void

    .line 513
    :cond_16
    const-string v0, "MediaPlayer"

    .line 514
    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    const-string v2, "Error ("

    .line 518
    .line 519
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 523
    .line 524
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    const-string v2, ","

    .line 528
    .line 529
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 533
    .line 534
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    const-string v2, ")"

    .line 538
    .line 539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 550
    .line 551
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    if-eqz v0, :cond_17

    .line 556
    .line 557
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 558
    .line 559
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 560
    .line 561
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 562
    .line 563
    invoke-interface {v0, v1, v2, p1}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 564
    .line 565
    .line 566
    move-result p1

    .line 567
    goto :goto_5

    .line 568
    :cond_17
    move p1, v3

    .line 569
    :goto_5
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 570
    .line 571
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 576
    .line 577
    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 578
    .line 579
    .line 580
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 581
    .line 582
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    if-eqz v0, :cond_18

    .line 587
    .line 588
    if-nez p1, :cond_18

    .line 589
    .line 590
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 591
    .line 592
    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 593
    .line 594
    .line 595
    :cond_18
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 596
    .line 597
    invoke-static {p1, v3}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;Z)V

    .line 598
    .line 599
    .line 600
    return-void

    .line 601
    :cond_19
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 602
    .line 603
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    if-nez v0, :cond_1a

    .line 608
    .line 609
    return-void

    .line 610
    :cond_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 611
    .line 612
    if-nez p1, :cond_1b

    .line 613
    .line 614
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 615
    .line 616
    invoke-interface {v0, p1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    .line 617
    .line 618
    .line 619
    goto :goto_6

    .line 620
    :cond_1b
    instance-of v1, p1, Landroid/os/Parcel;

    .line 621
    .line 622
    if-eqz v1, :cond_1c

    .line 623
    .line 624
    check-cast p1, Landroid/os/Parcel;

    .line 625
    .line 626
    new-instance v1, Landroid/media/TimedText;

    .line 627
    .line 628
    invoke-direct {v1, p1}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 632
    .line 633
    .line 634
    iget-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 635
    .line 636
    invoke-interface {v0, p1, v1}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    .line 637
    .line 638
    .line 639
    :cond_1c
    :goto_6
    return-void

    .line 640
    nop

    .line 641
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :pswitch_data_2
    .packed-switch 0x2bc
        :pswitch_d
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
