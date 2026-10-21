.class public final synthetic Landroid/accessibilityservice/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroid/accessibilityservice/a;->b:I

    iput-object p1, p0, Landroid/accessibilityservice/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroid/accessibilityservice/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Landroid/accessibilityservice/a;->b:I

    .line 3
    .line 4
    const-string v2, "BluetoothUtils"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const-string/jumbo v4, "this$0"

    .line 8
    .line 9
    .line 10
    iget-object v5, p0, Landroid/accessibilityservice/a;->d:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, p0, Landroid/accessibilityservice/a;->c:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_8

    .line 18
    .line 19
    :pswitch_0
    check-cast v6, [B

    .line 20
    .line 21
    check-cast v5, Ll/a;

    .line 22
    .line 23
    sget v0, Ll/a;->f:I

    .line 24
    .line 25
    const-string v0, "=======>>> sendMessage()  "

    .line 26
    .line 27
    const-string v1, "$byteArray"

    .line 28
    .line 29
    invoke-static {v6, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v5, v4}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v5, Ll/a;->d:Landroid/bluetooth/BluetoothSocket;

    .line 36
    .line 37
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .line 38
    .line 39
    sget-object v4, Lf0/a;->a:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-direct {v3, v6, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    new-instance v0, Landroid/accessibilityservice/a;

    .line 67
    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    iget-object v2, v5, Ll/a;->e:Ll/b;

    .line 71
    .line 72
    invoke-direct {v0, v5, v2, v1}, Landroid/accessibilityservice/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v5, Ll/a;->b:Landroid/os/Handler;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void

    .line 81
    :pswitch_1
    check-cast v6, Lcom/syu/carlink/UsbScanner;

    .line 82
    .line 83
    check-cast v5, Ljava/util/Map$Entry;

    .line 84
    .line 85
    sget-object v1, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    .line 86
    .line 87
    invoke-static {v6, v4}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "$device"

    .line 91
    .line 92
    invoke-static {v5, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, "device.value"

    .line 100
    .line 101
    invoke-static {v1, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 105
    .line 106
    iget-object v2, v6, Lcom/syu/carlink/UsbScanner;->a:Landroid/hardware/usb/UsbManager;

    .line 107
    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v1, "Usb"

    .line 115
    .line 116
    if-eqz v0, :cond_0

    .line 117
    .line 118
    const-string v2, "close connection failed: "

    .line 119
    .line 120
    const-string v4, "USB Device resetDevice failed: "

    .line 121
    .line 122
    :try_start_1
    const-class v5, Landroid/hardware/usb/UsbDeviceConnection;

    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    const-string/jumbo v6, "resetDevice"

    .line 129
    .line 130
    .line 131
    new-array v7, v3, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-static {v5, v0, v6, v7}, Lp/a;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-static {v5, v6}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :catch_1
    move-exception v0

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catchall_0
    move-exception v3

    .line 155
    goto :goto_3

    .line 156
    :catch_2
    move-exception v5

    .line 157
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-static {v1, v4}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    .line 175
    .line 176
    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 177
    .line 178
    .line 179
    move v4, v3

    .line 180
    goto :goto_2

    .line 181
    :catch_3
    move-exception v0

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    move v4, v3

    .line 188
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v2, "USB Device resetDevice result: "

    .line 205
    .line 206
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :catch_4
    move-exception v0

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :goto_4
    throw v3

    .line 245
    :cond_0
    move v4, v3

    .line 246
    :goto_5
    if-nez v4, :cond_1

    .line 247
    .line 248
    const/4 v0, 0x1

    .line 249
    invoke-static {v0}, Lt/b;->j(I)V

    .line 250
    .line 251
    .line 252
    const-wide/16 v4, 0x258

    .line 253
    .line 254
    :try_start_6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 255
    .line 256
    .line 257
    goto :goto_6

    .line 258
    :catch_5
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 260
    .line 261
    .line 262
    :goto_6
    invoke-static {v3}, Lt/b;->j(I)V

    .line 263
    .line 264
    .line 265
    const-string v0, "==========>>> reset Usb power"

    .line 266
    .line 267
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_1
    return-void

    .line 271
    :cond_2
    const-string/jumbo v1, "usbManager"

    .line 272
    .line 273
    .line 274
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :pswitch_2
    check-cast v6, Lcom/syu/carlink/MainActivity;

    .line 279
    .line 280
    check-cast v5, Lcom/google/android/projection/protocol/Transport;

    .line 281
    .line 282
    invoke-static {v6, v4}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 286
    .line 287
    if-eqz v1, :cond_5

    .line 288
    .line 289
    iget-boolean v0, v1, Lcom/syu/carlink/CarLink;->d:Z

    .line 290
    .line 291
    if-eqz v0, :cond_3

    .line 292
    .line 293
    invoke-virtual {v6}, Lcom/syu/carlink/MainActivity;->e()Lcom/syu/carlink/auto/AutoFragment;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v6, v0}, Lcom/syu/carlink/MainActivity;->m(Landroidx/fragment/app/Fragment;)V

    .line 298
    .line 299
    .line 300
    :cond_3
    sget-object v0, Lf/k;->y:Lf/k;

    .line 301
    .line 302
    invoke-virtual {v0}, Lf/k;->f()Lcom/syu/carlink/CarLinkService;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    if-nez v1, :cond_4

    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_4
    iput v3, v0, Lf/k;->v:I

    .line 310
    .line 311
    iget-object v1, v1, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 312
    .line 313
    iget-object v2, v0, Lf/k;->q:Lf/b;

    .line 314
    .line 315
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, v0, Lf/k;->s:Lf/b;

    .line 319
    .line 320
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    .line 322
    .line 323
    const-wide/16 v3, 0x1f4

    .line 324
    .line 325
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    .line 327
    .line 328
    :goto_7
    invoke-virtual {v6}, Lcom/syu/carlink/MainActivity;->e()Lcom/syu/carlink/auto/AutoFragment;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0, v5}, Lcom/syu/carlink/auto/AutoFragment;->onConnected(Lcom/google/android/projection/protocol/Transport;)V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :cond_5
    const-string/jumbo v1, "me"

    .line 337
    .line 338
    .line 339
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    throw v0

    .line 343
    :pswitch_3
    check-cast v6, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 344
    .line 345
    check-cast v5, Landroid/content/BroadcastReceiver;

    .line 346
    .line 347
    invoke-static {v6, v5}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->c(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Landroid/content/BroadcastReceiver;)V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :pswitch_4
    check-cast v6, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 352
    .line 353
    check-cast v5, Landroid/graphics/Typeface;

    .line 354
    .line 355
    invoke-static {v6, v5}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->b(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/graphics/Typeface;)V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :pswitch_5
    check-cast v6, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 360
    .line 361
    check-cast v5, [Landroid/view/View;

    .line 362
    .line 363
    invoke-static {v6, v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->a(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    .line 364
    .line 365
    .line 366
    return-void

    .line 367
    :pswitch_6
    check-cast v6, Landroid/os/PowerManager$WakeLock;

    .line 368
    .line 369
    check-cast v5, Ljava/lang/Runnable;

    .line 370
    .line 371
    invoke-static {v6, v5}, Landroid/os/PowerManager$WakeLock;->a(Landroid/os/PowerManager$WakeLock;Ljava/lang/Runnable;)V

    .line 372
    .line 373
    .line 374
    return-void

    .line 375
    :pswitch_7
    check-cast v6, Landroid/accessibilityservice/AccessibilityButtonController;

    .line 376
    .line 377
    check-cast v5, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    .line 378
    .line 379
    invoke-static {v6, v5}, Landroid/accessibilityservice/AccessibilityButtonController;->b(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V

    .line 380
    .line 381
    .line 382
    return-void

    .line 383
    :goto_8
    check-cast v6, Ll/a;

    .line 384
    .line 385
    check-cast v5, Ll/b;

    .line 386
    .line 387
    sget v0, Ll/a;->f:I

    .line 388
    .line 389
    invoke-static {v6, v4}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    const-string/jumbo v0, "this$1"

    .line 393
    .line 394
    .line 395
    invoke-static {v5, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    iput-boolean v3, v6, Ll/a;->c:Z

    .line 399
    .line 400
    iget-object v0, v6, Ll/a;->d:Landroid/bluetooth/BluetoothSocket;

    .line 401
    .line 402
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v6}, Ljava/lang/Thread;->join()V

    .line 406
    .line 407
    .line 408
    const-string v0, "=======>>> btSocketDisconnected()"

    .line 409
    .line 410
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    const-string v0, "SS"

    .line 414
    .line 415
    invoke-static {v0}, Ll/b;->a(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
