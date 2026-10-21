.class public final Lg/b;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field public final A:Landroidx/lifecycle/MutableLiveData;

.field public final B:Landroidx/lifecycle/MutableLiveData;

.field public final C:Landroidx/lifecycle/MutableLiveData;

.field public final D:Landroidx/lifecycle/MutableLiveData;

.field public final E:Landroidx/lifecycle/MutableLiveData;

.field public final F:Landroidx/lifecycle/MutableLiveData;

.field public final G:Landroidx/lifecycle/MutableLiveData;

.field public final H:Landroidx/lifecycle/MutableLiveData;

.field public final I:Landroidx/lifecycle/MutableLiveData;

.field public final J:Landroidx/lifecycle/MutableLiveData;

.field public final a:Landroidx/lifecycle/MutableLiveData;

.field public final b:Landroidx/lifecycle/MutableLiveData;

.field public final c:Landroidx/lifecycle/MutableLiveData;

.field public final d:Landroidx/lifecycle/MutableLiveData;

.field public final e:Landroidx/lifecycle/MutableLiveData;

.field public final f:Landroidx/lifecycle/MutableLiveData;

.field public final g:Landroidx/lifecycle/MutableLiveData;

.field public final h:Landroidx/lifecycle/MutableLiveData;

.field public final i:Landroidx/lifecycle/MutableLiveData;

.field public final j:Landroidx/lifecycle/MutableLiveData;

.field public final k:Landroidx/lifecycle/MutableLiveData;

.field public final l:Landroidx/lifecycle/MutableLiveData;

.field public final m:Landroidx/lifecycle/MutableLiveData;

.field public final n:Landroidx/lifecycle/MutableLiveData;

.field public final o:Landroidx/lifecycle/MutableLiveData;

.field public final p:Landroidx/lifecycle/MutableLiveData;

.field public final q:Landroidx/lifecycle/MutableLiveData;

.field public final r:Landroidx/lifecycle/MutableLiveData;

.field public final s:Landroidx/lifecycle/MutableLiveData;

.field public final t:Landroidx/lifecycle/MutableLiveData;

.field public final u:Landroidx/lifecycle/MutableLiveData;

.field public final v:Landroidx/lifecycle/MutableLiveData;

.field public final w:Landroidx/lifecycle/MutableLiveData;

.field public final x:Landroidx/lifecycle/MutableLiveData;

.field public final y:Landroidx/lifecycle/MutableLiveData;

.field public final z:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "ro.build.fytmanufacturer"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v2, v1}, Lt/b;->p(ILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lg/b;->a:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "ro.fyt.platform"

    .line 31
    .line 32
    invoke-static {v1}, Lt/b;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "sys.fyt.bluetooth_type"

    .line 50
    .line 51
    invoke-static {v1, v4}, Lt/b;->p(ILjava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    move v1, v2

    .line 58
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lg/b;->b:Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 70
    .line 71
    .line 72
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lg/b;->c:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lg/b;->d:Landroidx/lifecycle/MutableLiveData;

    .line 88
    .line 89
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lg/b;->e:Landroidx/lifecycle/MutableLiveData;

    .line 98
    .line 99
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 100
    .line 101
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lg/b;->f:Landroidx/lifecycle/MutableLiveData;

    .line 108
    .line 109
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 110
    .line 111
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lg/b;->g:Landroidx/lifecycle/MutableLiveData;

    .line 118
    .line 119
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 120
    .line 121
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lg/b;->h:Landroidx/lifecycle/MutableLiveData;

    .line 128
    .line 129
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 130
    .line 131
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 138
    .line 139
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lg/b;->i:Landroidx/lifecycle/MutableLiveData;

    .line 146
    .line 147
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 148
    .line 149
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v4, ""

    .line 153
    .line 154
    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iput-object v0, p0, Lg/b;->j:Landroidx/lifecycle/MutableLiveData;

    .line 158
    .line 159
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 160
    .line 161
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lg/b;->k:Landroidx/lifecycle/MutableLiveData;

    .line 168
    .line 169
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 170
    .line 171
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iput-object v0, p0, Lg/b;->l:Landroidx/lifecycle/MutableLiveData;

    .line 178
    .line 179
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 180
    .line 181
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    iput-object v0, p0, Lg/b;->m:Landroidx/lifecycle/MutableLiveData;

    .line 188
    .line 189
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 190
    .line 191
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    iput-object v0, p0, Lg/b;->n:Landroidx/lifecycle/MutableLiveData;

    .line 198
    .line 199
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 200
    .line 201
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 202
    .line 203
    .line 204
    iput-object v0, p0, Lg/b;->o:Landroidx/lifecycle/MutableLiveData;

    .line 205
    .line 206
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 207
    .line 208
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    iput-object v0, p0, Lg/b;->p:Landroidx/lifecycle/MutableLiveData;

    .line 215
    .line 216
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 217
    .line 218
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 225
    .line 226
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iput-object v0, p0, Lg/b;->q:Landroidx/lifecycle/MutableLiveData;

    .line 233
    .line 234
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 235
    .line 236
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 237
    .line 238
    .line 239
    const/4 v4, -0x1

    .line 240
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iput-object v0, p0, Lg/b;->r:Landroidx/lifecycle/MutableLiveData;

    .line 248
    .line 249
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 250
    .line 251
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    iput-object v0, p0, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    .line 258
    .line 259
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 260
    .line 261
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    iput-object v0, p0, Lg/b;->t:Landroidx/lifecycle/MutableLiveData;

    .line 272
    .line 273
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 274
    .line 275
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 282
    .line 283
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 290
    .line 291
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 292
    .line 293
    .line 294
    const/4 v4, 0x3

    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    iput-object v0, p0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 303
    .line 304
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 305
    .line 306
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    iput-object v0, p0, Lg/b;->v:Landroidx/lifecycle/MutableLiveData;

    .line 313
    .line 314
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 315
    .line 316
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    iput-object v0, p0, Lg/b;->w:Landroidx/lifecycle/MutableLiveData;

    .line 323
    .line 324
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 325
    .line 326
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    iput-object v0, p0, Lg/b;->x:Landroidx/lifecycle/MutableLiveData;

    .line 333
    .line 334
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 335
    .line 336
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    iput-object v0, p0, Lg/b;->y:Landroidx/lifecycle/MutableLiveData;

    .line 343
    .line 344
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 345
    .line 346
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    iput-object v0, p0, Lg/b;->z:Landroidx/lifecycle/MutableLiveData;

    .line 353
    .line 354
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 355
    .line 356
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    iput-object v0, p0, Lg/b;->A:Landroidx/lifecycle/MutableLiveData;

    .line 363
    .line 364
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 365
    .line 366
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    iput-object v0, p0, Lg/b;->B:Landroidx/lifecycle/MutableLiveData;

    .line 373
    .line 374
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 375
    .line 376
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    iput-object v0, p0, Lg/b;->C:Landroidx/lifecycle/MutableLiveData;

    .line 383
    .line 384
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 385
    .line 386
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    iput-object v0, p0, Lg/b;->D:Landroidx/lifecycle/MutableLiveData;

    .line 393
    .line 394
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 395
    .line 396
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    iput-object v0, p0, Lg/b;->E:Landroidx/lifecycle/MutableLiveData;

    .line 407
    .line 408
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 409
    .line 410
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    iput-object v0, p0, Lg/b;->F:Landroidx/lifecycle/MutableLiveData;

    .line 417
    .line 418
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 419
    .line 420
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 421
    .line 422
    .line 423
    iput-object v0, p0, Lg/b;->G:Landroidx/lifecycle/MutableLiveData;

    .line 424
    .line 425
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 426
    .line 427
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 428
    .line 429
    .line 430
    iput-object v0, p0, Lg/b;->H:Landroidx/lifecycle/MutableLiveData;

    .line 431
    .line 432
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 433
    .line 434
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    check-cast v1, Ljava/lang/Integer;

    .line 442
    .line 443
    iput-object v0, p0, Lg/b;->I:Landroidx/lifecycle/MutableLiveData;

    .line 444
    .line 445
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 446
    .line 447
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    iput-object v0, p0, Lg/b;->J:Landroidx/lifecycle/MutableLiveData;

    .line 454
    .line 455
    return-void
.end method


# virtual methods
.method public final a()Landroid/util/Size;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/b;->E:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x2

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    sget v0, Le/m;->a:I

    .line 20
    .line 21
    sget-object v0, Le/m;->d:Landroid/util/Size;

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    sget v0, Le/m;->a:I

    .line 35
    .line 36
    sget-object v0, Le/m;->c:Landroid/util/Size;

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    sget v0, Le/m;->a:I

    .line 40
    .line 41
    sget-object v0, Le/m;->b:Landroid/util/Size;

    .line 42
    .line 43
    :goto_2
    return-object v0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final c()Z
    .locals 4

    iget-object v0, p0, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    :goto_0
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :cond_4
    :goto_2
    return v1
.end method
