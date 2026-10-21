.class public Landroid/transition/Crossfade;
.super Landroid/transition/Transition;
.source "SourceFile"


# static fields
.field public static final FADE_BEHAVIOR_CROSSFADE:I = 0x0

.field public static final FADE_BEHAVIOR_OUT_IN:I = 0x2

.field public static final FADE_BEHAVIOR_REVEAL:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Crossfade"

.field private static final PROPNAME_BITMAP:Ljava/lang/String; = "android:crossfade:bitmap"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:crossfade:bounds"

.field private static final PROPNAME_DRAWABLE:Ljava/lang/String; = "android:crossfade:drawable"

.field public static final RESIZE_BEHAVIOR_NONE:I = 0x0

.field public static final RESIZE_BEHAVIOR_SCALE:I = 0x1

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;


# instance fields
.field private mFadeBehavior:I

.field private mResizeBehavior:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 6
    .line 7
    iput v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic access$000(Landroid/transition/Crossfade;)I
    .locals 0

    iget p0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return p0
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 15
    .line 16
    .line 17
    iget v2, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 34
    .line 35
    const-string v3, "android:crossfade:bounds"

    .line 36
    .line 37
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 49
    .line 50
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    instance-of v3, v0, Landroid/view/TextureView;

    .line 55
    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    check-cast v0, Landroid/view/TextureView;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance v3, Landroid/graphics/Canvas;

    .line 66
    .line 67
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 74
    .line 75
    const-string v3, "android:crossfade:bitmap"

    .line 76
    .line 77
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 81
    .line 82
    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 89
    .line 90
    const-string v1, "android:crossfade:drawable"

    .line 91
    .line 92
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_9

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    iget v3, v6, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x1

    .line 18
    if-eq v3, v8, :cond_1

    .line 19
    .line 20
    move v3, v8

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v3, v7

    .line 23
    :goto_0
    iget-object v4, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 24
    .line 25
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 26
    .line 27
    iget-object v1, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 28
    .line 29
    const-string v5, "android:crossfade:bounds"

    .line 30
    .line 31
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    check-cast v9, Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    move-object v10, v5

    .line 42
    check-cast v10, Landroid/graphics/Rect;

    .line 43
    .line 44
    const-string v5, "android:crossfade:bitmap"

    .line 45
    .line 46
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    check-cast v11, Landroid/graphics/Bitmap;

    .line 51
    .line 52
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Landroid/graphics/Bitmap;

    .line 57
    .line 58
    const-string v12, "android:crossfade:drawable"

    .line 59
    .line 60
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v13, v0

    .line 65
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 66
    .line 67
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object v12, v0

    .line 72
    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 73
    .line 74
    if-eqz v13, :cond_9

    .line 75
    .line 76
    if-eqz v12, :cond_9

    .line 77
    .line 78
    invoke-virtual {v11, v5}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_9

    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_1
    iget v1, v6, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 102
    .line 103
    if-ne v1, v8, :cond_3

    .line 104
    .line 105
    invoke-virtual {v0, v12}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-virtual {v0, v13}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 109
    .line 110
    .line 111
    iget v0, v6, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 112
    .line 113
    const/4 v1, 0x3

    .line 114
    const-string v5, "alpha"

    .line 115
    .line 116
    const/4 v11, 0x2

    .line 117
    if-ne v0, v11, :cond_4

    .line 118
    .line 119
    new-array v0, v1, [I

    .line 120
    .line 121
    fill-array-data v0, :array_0

    .line 122
    .line 123
    .line 124
    invoke-static {v13, v5, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    new-array v0, v8, [I

    .line 130
    .line 131
    aput v7, v0, v7

    .line 132
    .line 133
    invoke-static {v13, v5, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :goto_2
    move-object v14, v0

    .line 138
    new-instance v0, Landroid/transition/Crossfade$1;

    .line 139
    .line 140
    invoke-direct {v0, v6, v4, v13}, Landroid/transition/Crossfade$1;-><init>(Landroid/transition/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 144
    .line 145
    .line 146
    iget v0, v6, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 147
    .line 148
    if-ne v0, v11, :cond_5

    .line 149
    .line 150
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 151
    .line 152
    new-array v1, v1, [F

    .line 153
    .line 154
    fill-array-data v1, :array_1

    .line 155
    .line 156
    .line 157
    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    goto :goto_3

    .line 162
    :cond_5
    if-nez v0, :cond_6

    .line 163
    .line 164
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 165
    .line 166
    new-array v1, v11, [F

    .line 167
    .line 168
    fill-array-data v1, :array_2

    .line 169
    .line 170
    .line 171
    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    :cond_6
    :goto_3
    move-object v15, v2

    .line 176
    new-instance v5, Landroid/transition/Crossfade$2;

    .line 177
    .line 178
    move-object v0, v5

    .line 179
    move-object/from16 v1, p0

    .line 180
    .line 181
    move v2, v3

    .line 182
    move-object v3, v4

    .line 183
    move-object v4, v13

    .line 184
    move-object v11, v5

    .line 185
    move-object v5, v12

    .line 186
    invoke-direct/range {v0 .. v5}, Landroid/transition/Crossfade$2;-><init>(Landroid/transition/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v14, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 190
    .line 191
    .line 192
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 193
    .line 194
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 195
    .line 196
    .line 197
    new-array v1, v8, [Landroid/animation/Animator;

    .line 198
    .line 199
    aput-object v14, v1, v7

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 202
    .line 203
    .line 204
    if-eqz v15, :cond_7

    .line 205
    .line 206
    new-array v1, v8, [Landroid/animation/Animator;

    .line 207
    .line 208
    aput-object v15, v1, v7

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 211
    .line 212
    .line 213
    :cond_7
    iget v1, v6, Landroid/transition/Crossfade;->mResizeBehavior:I

    .line 214
    .line 215
    if-ne v1, v8, :cond_8

    .line 216
    .line 217
    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_8

    .line 222
    .line 223
    sget-object v1, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    .line 224
    .line 225
    const/4 v2, 0x2

    .line 226
    new-array v3, v2, [Ljava/lang/Object;

    .line 227
    .line 228
    aput-object v9, v3, v7

    .line 229
    .line 230
    aput-object v10, v3, v8

    .line 231
    .line 232
    const-string v4, "bounds"

    .line 233
    .line 234
    invoke-static {v13, v4, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    new-array v3, v8, [Landroid/animation/Animator;

    .line 239
    .line 240
    aput-object v1, v3, v7

    .line 241
    .line 242
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    .line 244
    .line 245
    iget v1, v6, Landroid/transition/Crossfade;->mResizeBehavior:I

    .line 246
    .line 247
    if-ne v1, v8, :cond_8

    .line 248
    .line 249
    sget-object v1, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    .line 250
    .line 251
    new-array v2, v2, [Ljava/lang/Object;

    .line 252
    .line 253
    aput-object v9, v2, v7

    .line 254
    .line 255
    aput-object v10, v2, v8

    .line 256
    .line 257
    invoke-static {v12, v4, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    new-array v2, v8, [Landroid/animation/Animator;

    .line 262
    .line 263
    aput-object v1, v2, v7

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 266
    .line 267
    .line 268
    :cond_8
    return-object v0

    .line 269
    :cond_9
    :goto_4
    return-object v2

    .line 270
    nop

    .line 271
    :array_0
    .array-data 4
        0xff
        0x0
        0x0
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getFadeBehavior()I
    .locals 1

    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method public getResizeBehavior()I
    .locals 1

    iget v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return v0
.end method

.method public setFadeBehavior(I)Landroid/transition/Crossfade;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    :cond_0
    return-object p0
.end method

.method public setResizeBehavior(I)Landroid/transition/Crossfade;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    :cond_0
    return-object p0
.end method
