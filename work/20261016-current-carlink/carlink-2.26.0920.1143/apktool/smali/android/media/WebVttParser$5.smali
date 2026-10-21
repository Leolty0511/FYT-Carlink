.class Landroid/media/WebVttParser$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method public constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0

    iput-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "-->"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Landroid/media/WebVttParser;->access$902(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/media/WebVttParser;->access$600(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1, v0}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    add-int/lit8 v0, v0, 0x3

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "^\\s+"

    .line 41
    .line 42
    const-string v3, ""

    .line 43
    .line 44
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "\\s+"

    .line 49
    .line 50
    const-string v4, " "

    .line 51
    .line 52
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/16 v0, 0x20

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-lez v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move-object v4, p1

    .line 70
    :goto_0
    const/4 v5, 0x1

    .line 71
    if-lez v0, :cond_2

    .line 72
    .line 73
    add-int/2addr v0, v5

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move-object p1, v3

    .line 80
    :goto_1
    iget-object v0, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 81
    .line 82
    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v2}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v6

    .line 90
    iput-wide v6, v0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 91
    .line 92
    iget-object v0, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 93
    .line 94
    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v4}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    iput-wide v6, v0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    .line 103
    .line 104
    const-string v0, " +"

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    array-length v0, p1

    .line 111
    move v2, v1

    .line 112
    :goto_2
    if-ge v2, v0, :cond_13

    .line 113
    .line 114
    aget-object v4, p1, v2

    .line 115
    .line 116
    const/16 v6, 0x3a

    .line 117
    .line 118
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-lez v6, :cond_12

    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    sub-int/2addr v7, v5

    .line 129
    if-ne v6, v7, :cond_3

    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_3
    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    add-int/lit8 v6, v6, 0x1

    .line 138
    .line 139
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    const-string/jumbo v6, "region"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-eqz v6, :cond_4

    .line 151
    .line 152
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 153
    .line 154
    invoke-static {v6}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    iput-object v4, v6, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 159
    .line 160
    goto/16 :goto_3

    .line 161
    .line 162
    :cond_4
    const-string/jumbo v6, "vertical"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    const-string/jumbo v8, "has invalid value"

    .line 170
    .line 171
    .line 172
    const-string v9, "cue setting"

    .line 173
    .line 174
    if-eqz v6, :cond_7

    .line 175
    .line 176
    const-string/jumbo v6, "rl"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-eqz v6, :cond_5

    .line 184
    .line 185
    iget-object v4, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 186
    .line 187
    invoke-static {v4}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    const/16 v6, 0x65

    .line 192
    .line 193
    iput v6, v4, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 194
    .line 195
    goto/16 :goto_3

    .line 196
    .line 197
    :cond_5
    const-string/jumbo v6, "lr"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_6

    .line 205
    .line 206
    iget-object v4, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 207
    .line 208
    invoke-static {v4}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    const/16 v6, 0x66

    .line 213
    .line 214
    iput v6, v4, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 215
    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :cond_6
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 219
    .line 220
    invoke-static {v6, v9, v7, v8, v4}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_3

    .line 224
    .line 225
    :cond_7
    const-string/jumbo v6, "line"

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    const-string/jumbo v10, "is not numeric or percentage"

    .line 233
    .line 234
    .line 235
    if-eqz v6, :cond_a

    .line 236
    .line 237
    :try_start_0
    const-string v6, "%"

    .line 238
    .line 239
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-eqz v6, :cond_8

    .line 244
    .line 245
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 246
    .line 247
    invoke-static {v6}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    iput-boolean v1, v6, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 252
    .line 253
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 254
    .line 255
    invoke-static {v6}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-static {v4}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    iput-object v8, v6, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 268
    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :cond_8
    const-string v6, ".*[^0-9].*"

    .line 272
    .line 273
    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-eqz v6, :cond_9

    .line 278
    .line 279
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 280
    .line 281
    const-string v8, "contains an invalid character"

    .line 282
    .line 283
    invoke-static {v6, v9, v7, v8, v4}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :cond_9
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 289
    .line 290
    invoke-static {v6}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    iput-boolean v5, v6, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 295
    .line 296
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 297
    .line 298
    invoke-static {v6}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    iput-object v8, v6, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .line 312
    goto/16 :goto_3

    .line 313
    .line 314
    :catch_0
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 315
    .line 316
    invoke-static {v6, v9, v7, v10, v4}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_3

    .line 320
    .line 321
    :cond_a
    const-string/jumbo v6, "position"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    if-eqz v6, :cond_b

    .line 329
    .line 330
    :try_start_1
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 331
    .line 332
    invoke-static {v6}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-static {v4}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    iput v8, v6, Landroid/media/TextTrackCue;->mTextPosition:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :catch_1
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 345
    .line 346
    invoke-static {v6, v9, v7, v10, v4}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_3

    .line 350
    .line 351
    :cond_b
    const-string/jumbo v6, "size"

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    if-eqz v6, :cond_c

    .line 359
    .line 360
    :try_start_2
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 361
    .line 362
    invoke-static {v6}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-static {v4}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v8

    .line 370
    iput v8, v6, Landroid/media/TextTrackCue;->mSize:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 371
    .line 372
    goto/16 :goto_3

    .line 373
    .line 374
    :catch_2
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 375
    .line 376
    invoke-static {v6, v9, v7, v10, v4}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    goto :goto_3

    .line 380
    :cond_c
    const-string v6, "align"

    .line 381
    .line 382
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v6

    .line 386
    if-eqz v6, :cond_12

    .line 387
    .line 388
    const-string/jumbo v6, "start"

    .line 389
    .line 390
    .line 391
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v6

    .line 395
    if-eqz v6, :cond_d

    .line 396
    .line 397
    iget-object v4, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 398
    .line 399
    invoke-static {v4}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    const/16 v6, 0xc9

    .line 404
    .line 405
    iput v6, v4, Landroid/media/TextTrackCue;->mAlignment:I

    .line 406
    .line 407
    goto :goto_3

    .line 408
    :cond_d
    const-string/jumbo v6, "middle"

    .line 409
    .line 410
    .line 411
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    if-eqz v6, :cond_e

    .line 416
    .line 417
    iget-object v4, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 418
    .line 419
    invoke-static {v4}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    const/16 v6, 0xc8

    .line 424
    .line 425
    iput v6, v4, Landroid/media/TextTrackCue;->mAlignment:I

    .line 426
    .line 427
    goto :goto_3

    .line 428
    :cond_e
    const-string v6, "end"

    .line 429
    .line 430
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v6

    .line 434
    if-eqz v6, :cond_f

    .line 435
    .line 436
    iget-object v4, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 437
    .line 438
    invoke-static {v4}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    const/16 v6, 0xca

    .line 443
    .line 444
    iput v6, v4, Landroid/media/TextTrackCue;->mAlignment:I

    .line 445
    .line 446
    goto :goto_3

    .line 447
    :cond_f
    const-string/jumbo v6, "left"

    .line 448
    .line 449
    .line 450
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v6

    .line 454
    if-eqz v6, :cond_10

    .line 455
    .line 456
    iget-object v4, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 457
    .line 458
    invoke-static {v4}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    const/16 v6, 0xcb

    .line 463
    .line 464
    iput v6, v4, Landroid/media/TextTrackCue;->mAlignment:I

    .line 465
    .line 466
    goto :goto_3

    .line 467
    :cond_10
    const-string/jumbo v6, "right"

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v6

    .line 474
    if-eqz v6, :cond_11

    .line 475
    .line 476
    iget-object v4, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 477
    .line 478
    invoke-static {v4}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    const/16 v6, 0xcc

    .line 483
    .line 484
    iput v6, v4, Landroid/media/TextTrackCue;->mAlignment:I

    .line 485
    .line 486
    goto :goto_3

    .line 487
    :cond_11
    iget-object v6, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 488
    .line 489
    invoke-static {v6, v9, v7, v8, v4}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    :cond_12
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 493
    .line 494
    goto/16 :goto_2

    .line 495
    .line 496
    :cond_13
    iget-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 497
    .line 498
    invoke-static {p1}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    iget-object p1, p1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 503
    .line 504
    if-nez p1, :cond_14

    .line 505
    .line 506
    iget-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 507
    .line 508
    invoke-static {p1}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    iget p1, p1, Landroid/media/TextTrackCue;->mSize:I

    .line 513
    .line 514
    const/16 v0, 0x64

    .line 515
    .line 516
    if-ne p1, v0, :cond_14

    .line 517
    .line 518
    iget-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 519
    .line 520
    invoke-static {p1}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    iget p1, p1, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 525
    .line 526
    if-eq p1, v0, :cond_15

    .line 527
    .line 528
    :cond_14
    iget-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 529
    .line 530
    invoke-static {p1}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    iput-object v3, p1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 535
    .line 536
    :cond_15
    iget-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    .line 537
    .line 538
    invoke-static {p1}, Landroid/media/WebVttParser;->access$1000(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-static {p1, v0}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 543
    .line 544
    .line 545
    return-void
.end method
