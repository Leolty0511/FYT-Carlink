.class public final Lcom/syu/carlink/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    iput p2, p0, Lcom/syu/carlink/b;->b:I

    iput-object p1, p0, Lcom/syu/carlink/b;->c:Landroid/content/ContextWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/syu/carlink/b;->b:I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const-string v4, "HDL"

    .line 7
    .line 8
    const-string v5, "me"

    .line 9
    .line 10
    iget-object v6, p0, Lcom/syu/carlink/b;->c:Landroid/content/ContextWrapper;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :pswitch_0
    check-cast v6, Lcom/syu/carlink/CarLinkService;

    .line 18
    .line 19
    iget-object v1, v6, Lcom/syu/carlink/CarLinkService;->s:Lz/a;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    iget-object v7, v6, Lcom/syu/carlink/CarLinkService;->t:Lz/a;

    .line 26
    .line 27
    if-eqz v7, :cond_1

    .line 28
    .line 29
    invoke-interface {v7}, Lz/a;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    check-cast v7, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-nez v7, :cond_1

    .line 40
    .line 41
    move v7, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v7, v2

    .line 44
    :goto_0
    if-eqz v7, :cond_2

    .line 45
    .line 46
    const-string v0, "ui wait abort =====>> link condition changed, drop pending link"

    .line 47
    .line 48
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/syu/carlink/CarLinkService;->c()V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_2
    sget-object v7, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 57
    .line 58
    if-eqz v7, :cond_8

    .line 59
    .line 60
    iget-boolean v7, v7, Lcom/syu/carlink/CarLink;->d:Z

    .line 61
    .line 62
    if-eqz v7, :cond_3

    .line 63
    .line 64
    invoke-static {v6}, Lcom/syu/carlink/CarLinkService;->a(Lcom/syu/carlink/CarLinkService;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    move v7, v3

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v7, v2

    .line 73
    :goto_1
    if-eqz v7, :cond_4

    .line 74
    .line 75
    iget v2, v6, Lcom/syu/carlink/CarLinkService;->v:I

    .line 76
    .line 77
    add-int/2addr v2, v3

    .line 78
    :cond_4
    iput v2, v6, Lcom/syu/carlink/CarLinkService;->v:I

    .line 79
    .line 80
    iget v8, v6, Lcom/syu/carlink/CarLinkService;->w:I

    .line 81
    .line 82
    add-int/2addr v8, v3

    .line 83
    iput v8, v6, Lcom/syu/carlink/CarLinkService;->w:I

    .line 84
    .line 85
    iget-wide v9, v6, Lcom/syu/carlink/CarLinkService;->x:J

    .line 86
    .line 87
    if-eqz v7, :cond_5

    .line 88
    .line 89
    iget v3, v6, Lcom/syu/carlink/CarLinkService;->u:I

    .line 90
    .line 91
    if-lt v2, v3, :cond_5

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "ui ready =====>> start link after "

    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget v2, v6, Lcom/syu/carlink/CarLinkService;->w:I

    .line 101
    .line 102
    int-to-long v2, v2

    .line 103
    mul-long/2addr v2, v9

    .line 104
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, "ms"

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Lcom/syu/carlink/CarLinkService;->c()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Lcom/syu/carlink/CarLinkService;->g()V

    .line 123
    .line 124
    .line 125
    invoke-interface {v1}, Lz/a;->invoke()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    iget v2, v6, Lcom/syu/carlink/CarLinkService;->y:I

    .line 130
    .line 131
    if-lt v8, v2, :cond_7

    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v3, "wait ui timeout =====>> fallback link with cached size, uiShowing: "

    .line 136
    .line 137
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sget-object v3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 141
    .line 142
    if-eqz v3, :cond_6

    .line 143
    .line 144
    iget-boolean v0, v3, Lcom/syu/carlink/CarLink;->d:Z

    .line 145
    .line 146
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v0, " viewportReady: "

    .line 150
    .line 151
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-static {v6}, Lcom/syu/carlink/CarLinkService;->a(Lcom/syu/carlink/CarLinkService;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Lcom/syu/carlink/CarLinkService;->c()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6}, Lcom/syu/carlink/CarLinkService;->g()V

    .line 172
    .line 173
    .line 174
    invoke-interface {v1}, Lz/a;->invoke()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_6
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_7
    invoke-virtual {v6}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0, p0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    .line 188
    .line 189
    :goto_2
    return-void

    .line 190
    :cond_8
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :pswitch_1
    check-cast v6, Lcom/syu/carlink/CarLinkService;

    .line 195
    .line 196
    iget-object v0, v6, Lcom/syu/carlink/CarLinkService;->z:Lh/i;

    .line 197
    .line 198
    if-eqz v0, :cond_9

    .line 199
    .line 200
    invoke-virtual {v0}, Lh/i;->c()V

    .line 201
    .line 202
    .line 203
    :cond_9
    return-void

    .line 204
    :pswitch_2
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 205
    .line 206
    if-eqz v1, :cond_d

    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iget-object v1, v1, Lg/b;->y:Landroidx/lifecycle/MutableLiveData;

    .line 213
    .line 214
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 219
    .line 220
    invoke-static {v1, v4}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_a

    .line 225
    .line 226
    move-object v4, v6

    .line 227
    check-cast v4, Lcom/syu/carlink/CarLinkService;

    .line 228
    .line 229
    iget-object v4, v4, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 230
    .line 231
    if-eqz v4, :cond_a

    .line 232
    .line 233
    invoke-virtual {v4}, Lh/c;->k()V

    .line 234
    .line 235
    .line 236
    :cond_a
    sget-object v4, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 237
    .line 238
    if-eqz v4, :cond_c

    .line 239
    .line 240
    invoke-static {}, Lcom/syu/carlink/CarLink;->F()Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-nez v0, :cond_b

    .line 245
    .line 246
    check-cast v6, Lcom/syu/carlink/CarLinkService;

    .line 247
    .line 248
    invoke-virtual {v6}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    const/4 v8, 0x0

    .line 253
    const/16 v9, 0x9d

    .line 254
    .line 255
    new-array v10, v3, [I

    .line 256
    .line 257
    aput v1, v10, v2

    .line 258
    .line 259
    const/4 v11, 0x0

    .line 260
    const/16 v12, 0x18

    .line 261
    .line 262
    invoke-static/range {v7 .. v12}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    :cond_b
    return-void

    .line 266
    :cond_c
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v0

    .line 270
    :cond_d
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v0

    .line 274
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v1, "===================>>  initHandler  "

    .line 277
    .line 278
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    check-cast v6, Lcom/syu/carlink/CarLinkService;

    .line 282
    .line 283
    iget v1, v6, Lcom/syu/carlink/CarLinkService;->q:I

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const/16 v1, 0x20

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    iget v2, v6, Lcom/syu/carlink/CarLinkService;->r:I

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget v0, v6, Lcom/syu/carlink/CarLinkService;->q:I

    .line 309
    .line 310
    if-eqz v0, :cond_f

    .line 311
    .line 312
    iget v0, v6, Lcom/syu/carlink/CarLinkService;->r:I

    .line 313
    .line 314
    if-nez v0, :cond_e

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_e
    invoke-static {}, Lcom/syu/carlink/CarLinkService;->m()Lcom/syu/carlink/CarLink;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    iget-object v0, v0, Lg/b;->r:Landroidx/lifecycle/MutableLiveData;

    .line 326
    .line 327
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    check-cast v0, Ljava/lang/Integer;

    .line 332
    .line 333
    if-eqz v0, :cond_f

    .line 334
    .line 335
    iget v1, v6, Lcom/syu/carlink/CarLinkService;->q:I

    .line 336
    .line 337
    iget v2, v6, Lcom/syu/carlink/CarLinkService;->r:I

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    new-instance v3, Lcom/syu/carlink/CarLinkService$initHandler$1$run$1$1;

    .line 344
    .line 345
    invoke-direct {v3, v6}, Lcom/syu/carlink/CarLinkService$initHandler$1$run$1$1;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6, v1, v2, v0, v3}, Lcom/syu/carlink/CarLinkService;->q(IIILz/l;)V

    .line 349
    .line 350
    .line 351
    :cond_f
    :goto_3
    return-void

    .line 352
    :goto_4
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 353
    .line 354
    if-eqz v1, :cond_10

    .line 355
    .line 356
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    iget-object v0, v0, Lg/b;->H:Landroidx/lifecycle/MutableLiveData;

    .line 361
    .line 362
    check-cast v6, Lcom/syu/carlink/MainActivity;

    .line 363
    .line 364
    iget-object v1, v6, Lcom/syu/carlink/MainActivity;->p:Le/j;

    .line 365
    .line 366
    invoke-virtual {v0, v6, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 367
    .line 368
    .line 369
    return-void

    .line 370
    :cond_10
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw v0

    .line 374
    nop

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
