.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    const-string v0, "Ignoring onBind: cur seq="

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    return-void

    .line 11
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v3

    .line 17
    :goto_0
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 18
    .line 19
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 23
    .line 24
    iput-boolean v2, p1, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 25
    .line 26
    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-interface {p1, v2}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1

    .line 46
    :pswitch_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 47
    .line 48
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 49
    .line 50
    monitor-enter v0

    .line 51
    :try_start_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 52
    .line 53
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 54
    .line 55
    invoke-static {v1, p1}, Landroid/view/inputmethod/InputMethodManager;->access$202(Landroid/view/inputmethod/InputMethodManager;I)I

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    throw p1

    .line 63
    :pswitch_3
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 64
    .line 65
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 66
    .line 67
    invoke-virtual {v0, p1, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_4
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 72
    .line 73
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 74
    .line 75
    invoke-virtual {v0, p1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_5
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 80
    .line 81
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    move v0, v2

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move v0, v3

    .line 96
    :goto_2
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    move v3, v2

    .line 101
    :cond_4
    sget-boolean p1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    .line 102
    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    const-string p1, "InputMethodManager"

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v4, "handleMessage: MSG_SET_ACTIVE "

    .line 110
    .line 111
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v4, ", was "

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 123
    .line 124
    iget-boolean v4, v4, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 125
    .line 126
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_5
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 137
    .line 138
    iget-object v1, p1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 139
    .line 140
    monitor-enter v1

    .line 141
    :try_start_3
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 142
    .line 143
    iput-boolean v0, p1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 144
    .line 145
    iput-boolean v3, p1, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 146
    .line 147
    if-nez v0, :cond_6

    .line 148
    .line 149
    iput-boolean v2, p1, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 150
    .line 151
    :try_start_4
    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 152
    .line 153
    invoke-interface {p1}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 154
    .line 155
    .line 156
    :catch_0
    :cond_6
    :try_start_5
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 157
    .line 158
    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 159
    .line 160
    if-eqz p1, :cond_8

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_8

    .line 167
    .line 168
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 169
    .line 170
    iget-boolean v2, p1, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 171
    .line 172
    invoke-static {p1, v2}, Landroid/view/inputmethod/InputMethodManager;->access$100(Landroid/view/inputmethod/InputMethodManager;Z)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_8

    .line 177
    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    const/4 p1, 0x7

    .line 181
    goto :goto_3

    .line 182
    :cond_7
    const/16 p1, 0x8

    .line 183
    .line 184
    :goto_3
    move v3, p1

    .line 185
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    const/4 v5, 0x0

    .line 189
    const/4 v6, 0x0

    .line 190
    const/4 v7, 0x0

    .line 191
    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 192
    .line 193
    .line 194
    :cond_8
    monitor-exit v1

    .line 195
    return-void

    .line 196
    :catchall_2
    move-exception p1

    .line 197
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 198
    throw p1

    .line 199
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 200
    .line 201
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 202
    .line 203
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    .line 204
    .line 205
    if-eqz v1, :cond_9

    .line 206
    .line 207
    const-string v1, "InputMethodManager"

    .line 208
    .line 209
    const-string v3, "handleMessage: MSG_UNBIND "

    .line 210
    .line 211
    const-string v4, " reason="

    .line 212
    .line 213
    invoke-static {v3, v0, v4}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-static {p1}, Lcom/android/internal/view/InputMethodClient;->getUnbindReason(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    :cond_9
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 232
    .line 233
    iget-object v1, p1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 234
    .line 235
    monitor-enter v1

    .line 236
    :try_start_6
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 237
    .line 238
    iget v3, p1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 239
    .line 240
    if-eq v3, v0, :cond_a

    .line 241
    .line 242
    monitor-exit v1

    .line 243
    return-void

    .line 244
    :cond_a
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 248
    .line 249
    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 250
    .line 251
    if-eqz p1, :cond_b

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-eqz p1, :cond_b

    .line 258
    .line 259
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 260
    .line 261
    iput-boolean v2, p1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 262
    .line 263
    :cond_b
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 264
    .line 265
    iget-boolean p1, v2, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 266
    .line 267
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 268
    if-eqz p1, :cond_c

    .line 269
    .line 270
    const/4 v3, 0x6

    .line 271
    const/4 v4, 0x0

    .line 272
    const/4 v5, 0x0

    .line 273
    const/4 v6, 0x0

    .line 274
    const/4 v7, 0x0

    .line 275
    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 276
    .line 277
    .line 278
    :cond_c
    return-void

    .line 279
    :catchall_3
    move-exception p1

    .line 280
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 281
    throw p1

    .line 282
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast p1, Lcom/android/internal/view/InputBindResult;

    .line 285
    .line 286
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    .line 287
    .line 288
    if-eqz v1, :cond_d

    .line 289
    .line 290
    const-string v1, "InputMethodManager"

    .line 291
    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string v4, "handleMessage: MSG_BIND "

    .line 295
    .line 296
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget v4, p1, Lcom/android/internal/view/InputBindResult;->sequence:I

    .line 300
    .line 301
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v4, ","

    .line 305
    .line 306
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-object v4, p1, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    :cond_d
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 322
    .line 323
    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 324
    .line 325
    monitor-enter v1

    .line 326
    :try_start_8
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 327
    .line 328
    iget v4, v2, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 329
    .line 330
    if-ltz v4, :cond_f

    .line 331
    .line 332
    iget v5, p1, Lcom/android/internal/view/InputBindResult;->sequence:I

    .line 333
    .line 334
    if-eq v4, v5, :cond_e

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_e
    invoke-static {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->access$002(Landroid/view/inputmethod/InputMethodManager;I)I

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 341
    .line 342
    iget-object v2, p1, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 343
    .line 344
    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 345
    .line 346
    .line 347
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 348
    .line 349
    iget-object v0, p1, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    .line 350
    .line 351
    iput-object v0, v3, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 352
    .line 353
    iget-object v0, p1, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    .line 354
    .line 355
    iput-object v0, v3, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 356
    .line 357
    iget p1, p1, Lcom/android/internal/view/InputBindResult;->sequence:I

    .line 358
    .line 359
    iput p1, v3, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 360
    .line 361
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 362
    const/4 v4, 0x5

    .line 363
    const/4 v5, 0x0

    .line 364
    const/4 v6, 0x0

    .line 365
    const/4 v7, 0x0

    .line 366
    const/4 v8, 0x0

    .line 367
    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 368
    .line 369
    .line 370
    return-void

    .line 371
    :cond_f
    :goto_4
    :try_start_9
    const-string v2, "InputMethodManager"

    .line 372
    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 379
    .line 380
    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 381
    .line 382
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v0, ", given seq="

    .line 386
    .line 387
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    iget v0, p1, Lcom/android/internal/view/InputBindResult;->sequence:I

    .line 391
    .line 392
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    iget-object p1, p1, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 403
    .line 404
    if-eqz p1, :cond_10

    .line 405
    .line 406
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 407
    .line 408
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    .line 409
    .line 410
    if-eq p1, v0, :cond_10

    .line 411
    .line 412
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 413
    .line 414
    .line 415
    :cond_10
    monitor-exit v1

    .line 416
    return-void

    .line 417
    :catchall_4
    move-exception p1

    .line 418
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 419
    throw p1

    .line 420
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 423
    .line 424
    :try_start_a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 425
    .line 426
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v1, Ljava/io/FileDescriptor;

    .line 429
    .line 430
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v2, Ljava/io/PrintWriter;

    .line 433
    .line 434
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v3, [Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 439
    .line 440
    .line 441
    goto :goto_5

    .line 442
    :catch_1
    move-exception v0

    .line 443
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast v1, Ljava/io/PrintWriter;

    .line 446
    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    const-string v3, "Exception: "

    .line 450
    .line 451
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    :goto_5
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 465
    .line 466
    monitor-enter v0

    .line 467
    :try_start_b
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 472
    .line 473
    .line 474
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 475
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :catchall_5
    move-exception p1

    .line 480
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 481
    throw p1

    .line 482
    nop

    .line 483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
