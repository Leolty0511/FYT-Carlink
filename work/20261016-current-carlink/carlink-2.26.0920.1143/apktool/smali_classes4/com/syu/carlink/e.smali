.class public final synthetic Lcom/syu/carlink/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/syu/carlink/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/syu/carlink/MainActivity;I)V
    .locals 0

    iput p2, p0, Lcom/syu/carlink/e;->b:I

    iput-object p1, p0, Lcom/syu/carlink/e;->c:Lcom/syu/carlink/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    iget v1, p0, Lcom/syu/carlink/e;->b:I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lcom/syu/carlink/e;->c:Lcom/syu/carlink/MainActivity;

    .line 7
    .line 8
    const-string v5, "this$0"

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :pswitch_0
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/syu/carlink/ui/a;

    .line 19
    .line 20
    sget v3, Le/w;->iphone_carplay_too_low_layout:I

    .line 21
    .line 22
    new-instance v5, Le/r;

    .line 23
    .line 24
    invoke-direct {v5, v2}, Le/r;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v4, v3, v5, v0}, Lcom/syu/carlink/ui/a;-><init>(Lcom/syu/carlink/MainActivity;ILk/b;I)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v4, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Lcom/syu/carlink/ui/a;->c(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/syu/carlink/ui/a;

    .line 44
    .line 45
    sget v2, Le/w;->iphone_signal_low_layout:I

    .line 46
    .line 47
    new-instance v5, Le/r;

    .line 48
    .line 49
    invoke-direct {v5, v3}, Le/r;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v4, v2, v5, v0}, Lcom/syu/carlink/ui/a;-><init>(Lcom/syu/carlink/MainActivity;ILk/b;I)V

    .line 53
    .line 54
    .line 55
    iput-object v1, v4, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Lcom/syu/carlink/ui/a;->c(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_2
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->e()Lcom/syu/carlink/auto/AutoFragment;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/syu/carlink/auto/AutoFragment;->onDisconnected()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_3
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Le/p;

    .line 88
    .line 89
    invoke-direct {v1, v4, v3}, Le/p;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_4
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_5
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v1, "MainActivity ============>>> 22 reLink:  "

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, "  "

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v1, "HDL"

    .line 145
    .line 146
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lcom/syu/carlink/MainActivity;->f()Lcom/syu/carlink/CarLinkService;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const/4 v1, 0x0

    .line 154
    const-string v3, "me"

    .line 155
    .line 156
    if-eqz v0, :cond_2

    .line 157
    .line 158
    sget-object v5, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 159
    .line 160
    if-eqz v5, :cond_1

    .line 161
    .line 162
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->B()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    const/4 v6, 0x3

    .line 167
    if-eq v5, v6, :cond_0

    .line 168
    .line 169
    new-instance v5, Landroid/util/Size;

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v5}, Lcom/syu/carlink/CarLinkService;->k(Landroid/util/Size;)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->d()V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_1
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v1

    .line 202
    :cond_2
    :goto_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 203
    .line 204
    if-eqz v0, :cond_7

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->l()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_4

    .line 211
    .line 212
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->e()Lcom/syu/carlink/auto/AutoFragment;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    iget-object v7, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 233
    .line 234
    if-nez v7, :cond_3

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_3
    iget-object v7, v0, Lcom/syu/carlink/auto/AutoFragment;->q:Landroid/os/Handler;

    .line 238
    .line 239
    new-instance v8, Lf/s;

    .line 240
    .line 241
    invoke-direct {v8, v0, v5, v6, v2}, Lf/s;-><init>(Ljava/lang/Object;III)V

    .line 242
    .line 243
    .line 244
    const-wide/16 v5, 0x15e

    .line 245
    .line 246
    invoke-virtual {v7, v8, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    .line 248
    .line 249
    :cond_4
    :goto_1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 250
    .line 251
    if-eqz v0, :cond_6

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_5

    .line 258
    .line 259
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->g()Lcom/syu/carlink/fragment/CarplayFragment;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    sget v4, Lcom/syu/carlink/fragment/CarplayFragment;->m:I

    .line 280
    .line 281
    invoke-virtual {v0, v1, v3, v2}, Lcom/syu/carlink/fragment/CarplayFragment;->b(IIZ)V

    .line 282
    .line 283
    .line 284
    :cond_5
    return-void

    .line 285
    :cond_6
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v1

    .line 289
    :cond_7
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v1

    .line 293
    :pswitch_6
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->d()V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :pswitch_7
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    new-instance v0, Lcom/syu/carlink/ui/a;

    .line 304
    .line 305
    sget v1, Le/w;->timer_dialog_layout:I

    .line 306
    .line 307
    new-instance v2, Le/s;

    .line 308
    .line 309
    invoke-direct {v2, v4}, Le/s;-><init>(Lcom/syu/carlink/MainActivity;)V

    .line 310
    .line 311
    .line 312
    const/16 v3, 0x14

    .line 313
    .line 314
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/syu/carlink/ui/a;-><init>(Lcom/syu/carlink/MainActivity;ILk/b;I)V

    .line 315
    .line 316
    .line 317
    sget-object v1, Lcom/syu/carlink/MainActivity$replace$2$2$1;->INSTANCE:Lcom/syu/carlink/MainActivity$replace$2$2$1;

    .line 318
    .line 319
    iput-object v1, v0, Lcom/syu/carlink/ui/a;->e:Lz/l;

    .line 320
    .line 321
    iput-object v0, v4, Lcom/syu/carlink/MainActivity;->k:Lcom/syu/carlink/ui/a;

    .line 322
    .line 323
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Lcom/syu/carlink/ui/a;->c(Landroid/view/View;)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :pswitch_8
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    new-instance v1, Le/p;

    .line 343
    .line 344
    invoke-direct {v1, v4, v2}, Le/p;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :pswitch_9
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iput-boolean v2, v4, Lcom/syu/carlink/MainActivity;->m:Z

    .line 355
    .line 356
    new-instance v0, Landroid/content/Intent;

    .line 357
    .line 358
    const-class v1, Lcom/syu/carlink/CarLinkService;

    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v4, v0, v4, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :goto_2
    invoke-static {v4, v5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    new-instance v1, Lcom/syu/carlink/ui/a;

    .line 382
    .line 383
    sget v2, Le/w;->phone_carplay_disable_layout:I

    .line 384
    .line 385
    new-instance v3, Le/r;

    .line 386
    .line 387
    const/4 v5, 0x2

    .line 388
    invoke-direct {v3, v5}, Le/r;-><init>(I)V

    .line 389
    .line 390
    .line 391
    invoke-direct {v1, v4, v2, v3, v0}, Lcom/syu/carlink/ui/a;-><init>(Lcom/syu/carlink/MainActivity;ILk/b;I)V

    .line 392
    .line 393
    .line 394
    iput-object v1, v4, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 395
    .line 396
    invoke-virtual {v4}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v1, v0}, Lcom/syu/carlink/ui/a;->c(Landroid/view/View;)V

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    nop

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
