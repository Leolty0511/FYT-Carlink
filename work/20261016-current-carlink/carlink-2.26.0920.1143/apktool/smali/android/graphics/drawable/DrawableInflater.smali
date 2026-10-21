.class public final Landroid/graphics/drawable/DrawableInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONSTRUCTOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mClassLoader:Ljava/lang/ClassLoader;

.field private final mRes:Landroid/content/res/Resources;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/graphics/drawable/DrawableInflater;->mClassLoader:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    return-void
.end method

.method private inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroid/graphics/drawable/DrawableInflater;->mClassLoader:Ljava/lang/ClassLoader;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-class v3, Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-array v3, v2, [Ljava/lang/Class;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    new-array v0, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    .line 43
    return-object v0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Landroid/view/InflateException;

    .line 49
    .line 50
    const-string v2, "Error inflating class "

    .line 51
    .line 52
    invoke-static {v2, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :catch_1
    move-exception v0

    .line 64
    new-instance v1, Landroid/view/InflateException;

    .line 65
    .line 66
    const-string v2, "Class not found "

    .line 67
    .line 68
    invoke-static {v2, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :catch_2
    move-exception v0

    .line 80
    new-instance v1, Landroid/view/InflateException;

    .line 81
    .line 82
    const-string v2, "Class is not a Drawable "

    .line 83
    .line 84
    invoke-static {v2, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 92
    .line 93
    .line 94
    throw v1

    .line 95
    :catch_3
    move-exception v0

    .line 96
    new-instance v1, Landroid/view/InflateException;

    .line 97
    .line 98
    const-string v2, "Error inflating class "

    .line 99
    .line 100
    invoke-static {v2, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 108
    .line 109
    .line 110
    throw v1
.end method

.method private inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :sswitch_0
    const-string v0, "animated-vector"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    const/16 v1, 0x12

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :sswitch_1
    const-string v0, "animated-rotate"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_1
    const/16 v1, 0x11

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :sswitch_2
    const-string/jumbo v0, "selector"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_2
    const/16 v1, 0x10

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :sswitch_3
    const-string/jumbo v0, "level-list"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_3
    const/16 v1, 0xf

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :sswitch_4
    const-string/jumbo v0, "shape"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_4

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_4
    const/16 v1, 0xe

    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :sswitch_5
    const-string/jumbo v0, "scale"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_5

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_5
    const/16 v1, 0xd

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :sswitch_6
    const-string/jumbo v0, "inset"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_6

    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :cond_6
    const/16 v1, 0xc

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :sswitch_7
    const-string v0, "color"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_7

    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :cond_7
    const/16 v1, 0xb

    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :sswitch_8
    const-string v0, "clip"

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_8

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_8
    const/16 v1, 0xa

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :sswitch_9
    const-string/jumbo v0, "layer-list"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_9

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_9
    const/16 v1, 0x9

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :sswitch_a
    const-string v0, "animated-selector"

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_a

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_a
    const/16 v1, 0x8

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :sswitch_b
    const-string/jumbo v0, "vector"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_b

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_b
    const/4 v1, 0x7

    .line 185
    goto :goto_0

    .line 186
    :sswitch_c
    const-string/jumbo v0, "rotate"

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-nez p1, :cond_c

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_c
    const/4 v1, 0x6

    .line 197
    goto :goto_0

    .line 198
    :sswitch_d
    const-string/jumbo v0, "ripple"

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-nez p1, :cond_d

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_d
    const/4 v1, 0x5

    .line 209
    goto :goto_0

    .line 210
    :sswitch_e
    const-string v0, "bitmap"

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_e

    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_e
    const/4 v1, 0x4

    .line 220
    goto :goto_0

    .line 221
    :sswitch_f
    const-string v0, "animation-list"

    .line 222
    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-nez p1, :cond_f

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_f
    const/4 v1, 0x3

    .line 231
    goto :goto_0

    .line 232
    :sswitch_10
    const-string/jumbo v0, "nine-patch"

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-nez p1, :cond_10

    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_10
    const/4 v1, 0x2

    .line 243
    goto :goto_0

    .line 244
    :sswitch_11
    const-string/jumbo v0, "transition"

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-nez p1, :cond_11

    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_11
    const/4 v1, 0x1

    .line 255
    goto :goto_0

    .line 256
    :sswitch_12
    const-string v0, "adaptive-icon"

    .line 257
    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-nez p1, :cond_12

    .line 263
    .line 264
    goto :goto_0

    .line 265
    :cond_12
    const/4 v1, 0x0

    .line 266
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 267
    .line 268
    .line 269
    const/4 p1, 0x0

    .line 270
    return-object p1

    .line 271
    :pswitch_0
    new-instance p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 272
    .line 273
    invoke-direct {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>()V

    .line 274
    .line 275
    .line 276
    return-object p1

    .line 277
    :pswitch_1
    new-instance p1, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 278
    .line 279
    invoke-direct {p1}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>()V

    .line 280
    .line 281
    .line 282
    return-object p1

    .line 283
    :pswitch_2
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    .line 284
    .line 285
    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 286
    .line 287
    .line 288
    return-object p1

    .line 289
    :pswitch_3
    new-instance p1, Landroid/graphics/drawable/LevelListDrawable;

    .line 290
    .line 291
    invoke-direct {p1}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 292
    .line 293
    .line 294
    return-object p1

    .line 295
    :pswitch_4
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 296
    .line 297
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 298
    .line 299
    .line 300
    return-object p1

    .line 301
    :pswitch_5
    new-instance p1, Landroid/graphics/drawable/ScaleDrawable;

    .line 302
    .line 303
    invoke-direct {p1}, Landroid/graphics/drawable/ScaleDrawable;-><init>()V

    .line 304
    .line 305
    .line 306
    return-object p1

    .line 307
    :pswitch_6
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    .line 308
    .line 309
    invoke-direct {p1}, Landroid/graphics/drawable/InsetDrawable;-><init>()V

    .line 310
    .line 311
    .line 312
    return-object p1

    .line 313
    :pswitch_7
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 314
    .line 315
    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 316
    .line 317
    .line 318
    return-object p1

    .line 319
    :pswitch_8
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    .line 320
    .line 321
    invoke-direct {p1}, Landroid/graphics/drawable/ClipDrawable;-><init>()V

    .line 322
    .line 323
    .line 324
    return-object p1

    .line 325
    :pswitch_9
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    .line 326
    .line 327
    invoke-direct {p1}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    .line 328
    .line 329
    .line 330
    return-object p1

    .line 331
    :pswitch_a
    new-instance p1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    .line 332
    .line 333
    invoke-direct {p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 334
    .line 335
    .line 336
    return-object p1

    .line 337
    :pswitch_b
    new-instance p1, Landroid/graphics/drawable/VectorDrawable;

    .line 338
    .line 339
    invoke-direct {p1}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    .line 340
    .line 341
    .line 342
    return-object p1

    .line 343
    :pswitch_c
    new-instance p1, Landroid/graphics/drawable/RotateDrawable;

    .line 344
    .line 345
    invoke-direct {p1}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    .line 346
    .line 347
    .line 348
    return-object p1

    .line 349
    :pswitch_d
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    .line 350
    .line 351
    invoke-direct {p1}, Landroid/graphics/drawable/RippleDrawable;-><init>()V

    .line 352
    .line 353
    .line 354
    return-object p1

    .line 355
    :pswitch_e
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 356
    .line 357
    invoke-direct {p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 358
    .line 359
    .line 360
    return-object p1

    .line 361
    :pswitch_f
    new-instance p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 362
    .line 363
    invoke-direct {p1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 364
    .line 365
    .line 366
    return-object p1

    .line 367
    :pswitch_10
    new-instance p1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 368
    .line 369
    invoke-direct {p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>()V

    .line 370
    .line 371
    .line 372
    return-object p1

    .line 373
    :pswitch_11
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    .line 374
    .line 375
    invoke-direct {p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>()V

    .line 376
    .line 377
    .line 378
    return-object p1

    .line 379
    :pswitch_12
    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 380
    .line 381
    invoke-direct {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>()V

    .line 382
    .line 383
    .line 384
    return-object p1

    .line 385
    :sswitch_data_0
    .sparse-switch
        -0x78aade90 -> :sswitch_12
        -0x66c492ab -> :sswitch_11
        -0x63a70093 -> :sswitch_10
        -0x5905b6b9 -> :sswitch_f
        -0x52c70ed1 -> :sswitch_e
        -0x377b49d0 -> :sswitch_d
        -0x372522a5 -> :sswitch_c
        -0x30e61ebd -> :sswitch_b
        -0x1e6b8b37 -> :sswitch_a
        -0x59d5866 -> :sswitch_9
        0x2ea350 -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x5fb611d -> :sswitch_6
        0x683094a -> :sswitch_5
        0x6854fa1 -> :sswitch_4
        0x993c947 -> :sswitch_3
        0x4705f3df -> :sswitch_2
        0x780890c5 -> :sswitch_1
        0x7e4794ad -> :sswitch_0
    .end sparse-switch

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public static loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/graphics/drawable/DrawableInflater;->loadDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static loadDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public inflateFromXml(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/DrawableInflater;->inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const-string v0, "drawable"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    const-string v0, "class"

    .line 11
    .line 12
    invoke-interface {p3, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Landroid/view/InflateException;

    .line 20
    .line 21
    const-string p2, "<drawable> tag must specify class attribute"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_2
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setSrcDensityOverride(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2, p3, p5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method
