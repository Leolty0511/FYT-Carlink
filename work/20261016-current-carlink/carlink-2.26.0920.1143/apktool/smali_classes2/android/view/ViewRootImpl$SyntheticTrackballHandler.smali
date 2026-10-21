.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private mLastTime:J

.field private final mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/view/ViewRootImpl$TrackballAxis;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 12
    .line 13
    new-instance p1, Landroid/view/ViewRootImpl$TrackballAxis;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    const-wide/32 v0, -0x80000000

    .line 2
    .line 3
    .line 4
    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 5
    .line 6
    iget-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 7
    .line 8
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v14

    .line 7
    iget-wide v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 8
    .line 9
    const-wide/16 v3, 0xfa

    .line 10
    .line 11
    add-long/2addr v1, v3

    .line 12
    cmp-long v1, v1, v14

    .line 13
    .line 14
    const/4 v13, 0x0

    .line 15
    if-gez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 18
    .line 19
    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 23
    .line 24
    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 25
    .line 26
    .line 27
    iput-wide v14, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 28
    .line 29
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 34
    .line 35
    .line 36
    move-result v29

    .line 37
    const/4 v12, 0x2

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    if-eq v1, v2, :cond_1

    .line 42
    .line 43
    move/from16 v16, v13

    .line 44
    .line 45
    move-wide/from16 v17, v14

    .line 46
    .line 47
    move v14, v12

    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_1
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 51
    .line 52
    invoke-virtual {v1, v12}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 56
    .line 57
    invoke-virtual {v1, v12}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 58
    .line 59
    .line 60
    iget-object v11, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 61
    .line 62
    new-instance v10, Landroid/view/KeyEvent;

    .line 63
    .line 64
    const/4 v6, 0x1

    .line 65
    const/16 v7, 0x17

    .line 66
    .line 67
    const/4 v8, 0x0

    .line 68
    const/16 v16, -0x1

    .line 69
    .line 70
    const/16 v17, 0x0

    .line 71
    .line 72
    const/16 v18, 0x400

    .line 73
    .line 74
    const/16 v19, 0x101

    .line 75
    .line 76
    move-object v1, v10

    .line 77
    move-wide v2, v14

    .line 78
    move-wide v4, v14

    .line 79
    move/from16 v9, v29

    .line 80
    .line 81
    move-object/from16 v30, v10

    .line 82
    .line 83
    move/from16 v10, v16

    .line 84
    .line 85
    move-object/from16 v31, v11

    .line 86
    .line 87
    move/from16 v11, v17

    .line 88
    .line 89
    move/from16 v12, v18

    .line 90
    .line 91
    move/from16 v16, v13

    .line 92
    .line 93
    move/from16 v13, v19

    .line 94
    .line 95
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 96
    .line 97
    .line 98
    move-object/from16 v2, v30

    .line 99
    .line 100
    move-object/from16 v1, v31

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 103
    .line 104
    .line 105
    move-wide/from16 v17, v14

    .line 106
    .line 107
    const/4 v14, 0x2

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    move/from16 v16, v13

    .line 110
    .line 111
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 112
    .line 113
    const/4 v13, 0x2

    .line 114
    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 118
    .line 119
    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 120
    .line 121
    .line 122
    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 123
    .line 124
    new-instance v11, Landroid/view/KeyEvent;

    .line 125
    .line 126
    const/4 v6, 0x0

    .line 127
    const/16 v7, 0x17

    .line 128
    .line 129
    const/4 v8, 0x0

    .line 130
    const/4 v10, -0x1

    .line 131
    const/16 v17, 0x0

    .line 132
    .line 133
    const/16 v18, 0x400

    .line 134
    .line 135
    const/16 v19, 0x101

    .line 136
    .line 137
    move-object v1, v11

    .line 138
    move-wide v2, v14

    .line 139
    move-wide v4, v14

    .line 140
    move/from16 v9, v29

    .line 141
    .line 142
    move-object/from16 v32, v11

    .line 143
    .line 144
    move/from16 v11, v17

    .line 145
    .line 146
    move-object/from16 v33, v12

    .line 147
    .line 148
    move/from16 v12, v18

    .line 149
    .line 150
    move-wide/from16 v17, v14

    .line 151
    .line 152
    move v14, v13

    .line 153
    move/from16 v13, v19

    .line 154
    .line 155
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 156
    .line 157
    .line 158
    move-object/from16 v2, v32

    .line 159
    .line 160
    move-object/from16 v1, v33

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 163
    .line 164
    .line 165
    :goto_0
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 166
    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 172
    .line 173
    .line 174
    move-result-wide v3

    .line 175
    const-string v5, "X"

    .line 176
    .line 177
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 182
    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 188
    .line 189
    .line 190
    move-result-wide v4

    .line 191
    const-string v6, "Y"

    .line 192
    .line 193
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    cmpl-float v1, v1, v2

    .line 198
    .line 199
    const/high16 v3, 0x3f800000    # 1.0f

    .line 200
    .line 201
    if-lez v1, :cond_5

    .line 202
    .line 203
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 204
    .line 205
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    if-eqz v13, :cond_4

    .line 210
    .line 211
    if-lez v13, :cond_3

    .line 212
    .line 213
    const/16 v1, 0x16

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_3
    const/16 v1, 0x15

    .line 217
    .line 218
    :goto_1
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 219
    .line 220
    iget v3, v2, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 221
    .line 222
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 223
    .line 224
    invoke-virtual {v2, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 225
    .line 226
    .line 227
    :goto_2
    move v14, v1

    .line 228
    goto :goto_4

    .line 229
    :cond_4
    move/from16 v14, v16

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_5
    const/4 v1, 0x0

    .line 233
    cmpl-float v1, v2, v1

    .line 234
    .line 235
    if-lez v1, :cond_7

    .line 236
    .line 237
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 238
    .line 239
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    if-eqz v13, :cond_4

    .line 244
    .line 245
    if-lez v13, :cond_6

    .line 246
    .line 247
    const/16 v1, 0x14

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_6
    const/16 v1, 0x13

    .line 251
    .line 252
    :goto_3
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 253
    .line 254
    iget v3, v2, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 255
    .line 256
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 257
    .line 258
    invoke-virtual {v2, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_7
    move/from16 v13, v16

    .line 263
    .line 264
    move v14, v13

    .line 265
    :goto_4
    if-eqz v14, :cond_b

    .line 266
    .line 267
    if-gez v13, :cond_8

    .line 268
    .line 269
    neg-int v13, v13

    .line 270
    :cond_8
    int-to-float v1, v13

    .line 271
    mul-float/2addr v1, v3

    .line 272
    float-to-int v1, v1

    .line 273
    if-le v1, v13, :cond_9

    .line 274
    .line 275
    add-int/lit8 v15, v13, -0x1

    .line 276
    .line 277
    sub-int v8, v1, v15

    .line 278
    .line 279
    iget-object v13, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 280
    .line 281
    new-instance v12, Landroid/view/KeyEvent;

    .line 282
    .line 283
    const/4 v6, 0x2

    .line 284
    const/4 v10, -0x1

    .line 285
    const/4 v11, 0x0

    .line 286
    const/16 v16, 0x400

    .line 287
    .line 288
    const/16 v19, 0x101

    .line 289
    .line 290
    move-object v1, v12

    .line 291
    move-wide/from16 v2, v17

    .line 292
    .line 293
    move-wide/from16 v4, v17

    .line 294
    .line 295
    move v7, v14

    .line 296
    move/from16 v9, v29

    .line 297
    .line 298
    move-object/from16 v34, v12

    .line 299
    .line 300
    move/from16 v12, v16

    .line 301
    .line 302
    move/from16 p1, v15

    .line 303
    .line 304
    move-object v15, v13

    .line 305
    move/from16 v13, v19

    .line 306
    .line 307
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 308
    .line 309
    .line 310
    move-object/from16 v1, v34

    .line 311
    .line 312
    invoke-virtual {v15, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 313
    .line 314
    .line 315
    move/from16 v13, p1

    .line 316
    .line 317
    :cond_9
    move-wide/from16 v1, v17

    .line 318
    .line 319
    :goto_5
    if-lez v13, :cond_a

    .line 320
    .line 321
    add-int/lit8 v13, v13, -0x1

    .line 322
    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 324
    .line 325
    .line 326
    move-result-wide v1

    .line 327
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 328
    .line 329
    new-instance v4, Landroid/view/KeyEvent;

    .line 330
    .line 331
    const/16 v21, 0x0

    .line 332
    .line 333
    const/16 v23, 0x0

    .line 334
    .line 335
    const/16 v25, -0x1

    .line 336
    .line 337
    const/16 v26, 0x0

    .line 338
    .line 339
    const/16 v27, 0x400

    .line 340
    .line 341
    const/16 v28, 0x101

    .line 342
    .line 343
    move-object/from16 v16, v4

    .line 344
    .line 345
    move-wide/from16 v17, v1

    .line 346
    .line 347
    move-wide/from16 v19, v1

    .line 348
    .line 349
    move/from16 v22, v14

    .line 350
    .line 351
    move/from16 v24, v29

    .line 352
    .line 353
    invoke-direct/range {v16 .. v28}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 357
    .line 358
    .line 359
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 360
    .line 361
    new-instance v4, Landroid/view/KeyEvent;

    .line 362
    .line 363
    const/16 v21, 0x1

    .line 364
    .line 365
    move-object/from16 v16, v4

    .line 366
    .line 367
    invoke-direct/range {v16 .. v28}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_a
    iput-wide v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 375
    .line 376
    :cond_b
    return-void
.end method
