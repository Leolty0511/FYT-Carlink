.class public Landroid/transition/ChangeText;
.super Landroid/transition/Transition;
.source "SourceFile"


# static fields
.field public static final CHANGE_BEHAVIOR_IN:I = 0x2

.field public static final CHANGE_BEHAVIOR_KEEP:I = 0x0

.field public static final CHANGE_BEHAVIOR_OUT:I = 0x1

.field public static final CHANGE_BEHAVIOR_OUT_IN:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "TextChange"

.field private static final PROPNAME_TEXT:Ljava/lang/String; = "android:textchange:text"

.field private static final PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:textchange:textColor"

.field private static final PROPNAME_TEXT_SELECTION_END:Ljava/lang/String; = "android:textchange:textSelectionEnd"

.field private static final PROPNAME_TEXT_SELECTION_START:Ljava/lang/String; = "android:textchange:textSelectionStart"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mChangeBehavior:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "android:textchange:textSelectionStart"

    .line 2
    .line 3
    const-string v1, "android:textchange:textSelectionEnd"

    .line 4
    .line 5
    const-string v2, "android:textchange:text"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    return-void
.end method

.method public static synthetic access$100(Landroid/transition/ChangeText;)I
    .locals 0

    iget p0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return p0
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "android:textchange:text"

    .line 16
    .line 17
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    instance-of v1, v0, Landroid/widget/EditText;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "android:textchange:textSelectionStart"

    .line 35
    .line 36
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "android:textchange:textSelectionEnd"

    .line 50
    .line 51
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    iget v1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    .line 55
    .line 56
    if-lez v1, :cond_1

    .line 57
    .line 58
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "android:textchange:textColor"

    .line 69
    .line 70
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method private setSelection(Landroid/widget/EditText;II)V
    .locals 0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 20

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    if-eqz v0, :cond_11

    .line 8
    .line 9
    if-eqz v1, :cond_11

    .line 10
    .line 11
    iget-object v2, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 12
    .line 13
    instance-of v2, v2, Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz v2, :cond_11

    .line 16
    .line 17
    iget-object v2, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 18
    .line 19
    instance-of v3, v2, Landroid/widget/TextView;

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_d

    .line 24
    .line 25
    :cond_0
    move-object v9, v2

    .line 26
    check-cast v9, Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 29
    .line 30
    iget-object v1, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 31
    .line 32
    const-string v2, "android:textchange:text"

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, ""

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/CharSequence;

    .line 47
    .line 48
    move-object v11, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v11, v4

    .line 51
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/CharSequence;

    .line 62
    .line 63
    move-object v12, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v12, v4

    .line 66
    :goto_1
    instance-of v2, v9, Landroid/widget/EditText;

    .line 67
    .line 68
    const/4 v3, -0x1

    .line 69
    if-eqz v2, :cond_7

    .line 70
    .line 71
    const-string v2, "android:textchange:textSelectionStart"

    .line 72
    .line 73
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move v4, v3

    .line 91
    :goto_2
    const-string v5, "android:textchange:textSelectionEnd"

    .line 92
    .line 93
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-eqz v6, :cond_4

    .line 98
    .line 99
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    move v6, v4

    .line 111
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    if-eqz v7, :cond_5

    .line 116
    .line 117
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    :cond_5
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-eqz v2, :cond_6

    .line 132
    .line 133
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    goto :goto_4

    .line 144
    :cond_6
    move v2, v3

    .line 145
    :goto_4
    move v14, v2

    .line 146
    move v13, v3

    .line 147
    move v15, v4

    .line 148
    move v7, v6

    .line 149
    goto :goto_5

    .line 150
    :cond_7
    move v7, v3

    .line 151
    move v13, v7

    .line 152
    move v14, v13

    .line 153
    move v15, v14

    .line 154
    :goto_5
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-nez v2, :cond_10

    .line 159
    .line 160
    iget v2, v10, Landroid/transition/ChangeText;->mChangeBehavior:I

    .line 161
    .line 162
    const/4 v6, 0x2

    .line 163
    if-eq v2, v6, :cond_8

    .line 164
    .line 165
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    instance-of v2, v9, Landroid/widget/EditText;

    .line 169
    .line 170
    if-eqz v2, :cond_8

    .line 171
    .line 172
    move-object v2, v9

    .line 173
    check-cast v2, Landroid/widget/EditText;

    .line 174
    .line 175
    invoke-direct {v10, v2, v15, v7}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    .line 176
    .line 177
    .line 178
    :cond_8
    iget v2, v10, Landroid/transition/ChangeText;->mChangeBehavior:I

    .line 179
    .line 180
    const/16 v16, 0x0

    .line 181
    .line 182
    if-nez v2, :cond_9

    .line 183
    .line 184
    new-array v0, v6, [F

    .line 185
    .line 186
    fill-array-data v0, :array_0

    .line 187
    .line 188
    .line 189
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    new-instance v6, Landroid/transition/ChangeText$1;

    .line 194
    .line 195
    move-object v0, v6

    .line 196
    move-object/from16 v1, p0

    .line 197
    .line 198
    move-object v2, v11

    .line 199
    move-object v3, v9

    .line 200
    move-object v4, v12

    .line 201
    move v5, v13

    .line 202
    move/from16 p1, v7

    .line 203
    .line 204
    move-object v7, v6

    .line 205
    move v6, v14

    .line 206
    invoke-direct/range {v0 .. v6}, Landroid/transition/ChangeText$1;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v8, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 210
    .line 211
    .line 212
    move/from16 v19, p1

    .line 213
    .line 214
    move-object/from16 p3, v11

    .line 215
    .line 216
    move/from16 p2, v15

    .line 217
    .line 218
    move/from16 v6, v16

    .line 219
    .line 220
    :goto_6
    move-object v11, v8

    .line 221
    goto/16 :goto_c

    .line 222
    .line 223
    :cond_9
    move/from16 p1, v7

    .line 224
    .line 225
    const-string v2, "android:textchange:textColor"

    .line 226
    .line 227
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Ljava/lang/Integer;

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    check-cast v1, Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    iget v1, v10, Landroid/transition/ChangeText;->mChangeBehavior:I

    .line 248
    .line 249
    const/4 v5, 0x3

    .line 250
    const/4 v4, 0x1

    .line 251
    if-eq v1, v5, :cond_b

    .line 252
    .line 253
    if-ne v1, v4, :cond_a

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_a
    move/from16 v19, p1

    .line 257
    .line 258
    move/from16 v17, v4

    .line 259
    .line 260
    move/from16 v18, v7

    .line 261
    .line 262
    move-object/from16 p3, v11

    .line 263
    .line 264
    move/from16 p2, v15

    .line 265
    .line 266
    const/4 v8, 0x0

    .line 267
    move v11, v5

    .line 268
    goto :goto_8

    .line 269
    :cond_b
    :goto_7
    new-array v1, v6, [I

    .line 270
    .line 271
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    aput v2, v1, v16

    .line 276
    .line 277
    aput v16, v1, v4

    .line 278
    .line 279
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    new-instance v1, Landroid/transition/ChangeText$2;

    .line 284
    .line 285
    invoke-direct {v1, v10, v9, v0}, Landroid/transition/ChangeText$2;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 289
    .line 290
    .line 291
    new-instance v2, Landroid/transition/ChangeText$3;

    .line 292
    .line 293
    move-object v0, v2

    .line 294
    move-object/from16 v1, p0

    .line 295
    .line 296
    move-object v8, v2

    .line 297
    move-object v2, v11

    .line 298
    move/from16 p2, v15

    .line 299
    .line 300
    move-object v15, v3

    .line 301
    move-object v3, v9

    .line 302
    move/from16 v17, v4

    .line 303
    .line 304
    move-object v4, v12

    .line 305
    move-object/from16 p3, v11

    .line 306
    .line 307
    move v11, v5

    .line 308
    move v5, v13

    .line 309
    move v6, v14

    .line 310
    move/from16 v19, p1

    .line 311
    .line 312
    move/from16 v18, v7

    .line 313
    .line 314
    invoke-direct/range {v0 .. v7}, Landroid/transition/ChangeText$3;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v15, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 318
    .line 319
    .line 320
    move-object v8, v15

    .line 321
    :goto_8
    iget v0, v10, Landroid/transition/ChangeText;->mChangeBehavior:I

    .line 322
    .line 323
    const/4 v1, 0x2

    .line 324
    if-eq v0, v11, :cond_d

    .line 325
    .line 326
    if-ne v0, v1, :cond_c

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_c
    move/from16 v3, v18

    .line 330
    .line 331
    const/4 v0, 0x0

    .line 332
    goto :goto_a

    .line 333
    :cond_d
    :goto_9
    new-array v0, v1, [I

    .line 334
    .line 335
    aput v16, v0, v16

    .line 336
    .line 337
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->alpha(I)I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    aput v2, v0, v17

    .line 342
    .line 343
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    new-instance v2, Landroid/transition/ChangeText$4;

    .line 348
    .line 349
    move/from16 v3, v18

    .line 350
    .line 351
    invoke-direct {v2, v10, v9, v3}, Landroid/transition/ChangeText$4;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 355
    .line 356
    .line 357
    new-instance v2, Landroid/transition/ChangeText$5;

    .line 358
    .line 359
    invoke-direct {v2, v10, v9, v3}, Landroid/transition/ChangeText$5;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 363
    .line 364
    .line 365
    :goto_a
    if-eqz v8, :cond_e

    .line 366
    .line 367
    if-eqz v0, :cond_e

    .line 368
    .line 369
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 370
    .line 371
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 372
    .line 373
    .line 374
    new-array v1, v1, [Landroid/animation/Animator;

    .line 375
    .line 376
    aput-object v8, v1, v16

    .line 377
    .line 378
    aput-object v0, v1, v17

    .line 379
    .line 380
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 381
    .line 382
    .line 383
    move-object v11, v2

    .line 384
    goto :goto_b

    .line 385
    :cond_e
    if-eqz v8, :cond_f

    .line 386
    .line 387
    move v6, v3

    .line 388
    goto/16 :goto_6

    .line 389
    .line 390
    :cond_f
    move-object v11, v0

    .line 391
    :goto_b
    move v6, v3

    .line 392
    :goto_c
    new-instance v15, Landroid/transition/ChangeText$6;

    .line 393
    .line 394
    move-object v0, v15

    .line 395
    move-object/from16 v1, p0

    .line 396
    .line 397
    move-object v2, v9

    .line 398
    move-object v3, v12

    .line 399
    move v4, v13

    .line 400
    move v5, v14

    .line 401
    move-object/from16 v7, p3

    .line 402
    .line 403
    move/from16 v8, p2

    .line 404
    .line 405
    move/from16 v9, v19

    .line 406
    .line 407
    invoke-direct/range {v0 .. v9}, Landroid/transition/ChangeText$6;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v10, v15}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 411
    .line 412
    .line 413
    return-object v11

    .line 414
    :cond_10
    const/4 v0, 0x0

    .line 415
    return-object v0

    .line 416
    :cond_11
    :goto_d
    const/4 v0, 0x0

    .line 417
    return-object v0

    .line 418
    nop

    .line 419
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getChangeBehavior()I
    .locals 1

    iget v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setChangeBehavior(I)Landroid/transition/ChangeText;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    :cond_0
    return-object p0
.end method
