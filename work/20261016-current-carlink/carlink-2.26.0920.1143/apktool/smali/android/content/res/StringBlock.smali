.class final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$Height;,
        Landroid/content/res/StringBlock$StyleIDs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z = false


# instance fields
.field private final mNative:J

.field private final mOwnsNative:Z

.field private mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:[Ljava/lang/CharSequence;

.field mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final mUseSparse:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 13
    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 14
    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 8
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 9
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 4
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    if-eq p2, v0, :cond_1

    .line 10
    .line 11
    add-int/lit8 v2, p2, -0x1

    .line 12
    .line 13
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eq v2, v1, :cond_1

    .line 18
    .line 19
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 20
    .line 21
    if-lez p2, :cond_1

    .line 22
    .line 23
    add-int/lit8 v2, p2, -0x1

    .line 24
    .line 25
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v2, v1, :cond_0

    .line 30
    .line 31
    :cond_1
    if-eqz p3, :cond_3

    .line 32
    .line 33
    if-eq p3, v0, :cond_3

    .line 34
    .line 35
    add-int/lit8 v2, p3, -0x1

    .line 36
    .line 37
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eq v2, v1, :cond_3

    .line 42
    .line 43
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 44
    .line 45
    if-ge p3, v0, :cond_3

    .line 46
    .line 47
    add-int/lit8 v2, p3, -0x1

    .line 48
    .line 49
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ne v2, v1, :cond_2

    .line 54
    .line 55
    :cond_3
    const/16 v0, 0x33

    .line 56
    .line 57
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .locals 11

    .line 1
    array-length v0, p2

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    move v1, p1

    .line 12
    :goto_0
    array-length v2, p2

    .line 13
    if-ge v1, v2, :cond_16

    .line 14
    .line 15
    aget v2, p2, v1

    .line 16
    .line 17
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0x21

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 27
    .line 28
    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v3, v1, 0x1

    .line 32
    .line 33
    aget v3, p2, v3

    .line 34
    .line 35
    add-int/lit8 v6, v1, 0x2

    .line 36
    .line 37
    aget v6, p2, v6

    .line 38
    .line 39
    add-int/2addr v6, v5

    .line 40
    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_1
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v3, v1, 0x1

    .line 58
    .line 59
    aget v3, p2, v3

    .line 60
    .line 61
    add-int/lit8 v6, v1, 0x2

    .line 62
    .line 63
    aget v6, p2, v6

    .line 64
    .line 65
    add-int/2addr v6, v5

    .line 66
    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_2
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-ne v2, v3, :cond_3

    .line 76
    .line 77
    new-instance v2, Landroid/text/style/UnderlineSpan;

    .line 78
    .line 79
    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v3, v1, 0x1

    .line 83
    .line 84
    aget v3, p2, v3

    .line 85
    .line 86
    add-int/lit8 v6, v1, 0x2

    .line 87
    .line 88
    aget v6, p2, v6

    .line 89
    .line 90
    add-int/2addr v6, v5

    .line 91
    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_3
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ne v2, v3, :cond_4

    .line 101
    .line 102
    new-instance v2, Landroid/text/style/TypefaceSpan;

    .line 103
    .line 104
    const-string/jumbo v3, "monospace"

    .line 105
    .line 106
    .line 107
    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v3, v1, 0x1

    .line 111
    .line 112
    aget v3, p2, v3

    .line 113
    .line 114
    add-int/lit8 v6, v1, 0x2

    .line 115
    .line 116
    aget v6, p2, v6

    .line 117
    .line 118
    add-int/2addr v6, v5

    .line 119
    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :cond_4
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-ne v2, v3, :cond_5

    .line 129
    .line 130
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    .line 131
    .line 132
    const/high16 v3, 0x3fa00000    # 1.25f

    .line 133
    .line 134
    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 135
    .line 136
    .line 137
    add-int/lit8 v3, v1, 0x1

    .line 138
    .line 139
    aget v3, p2, v3

    .line 140
    .line 141
    add-int/lit8 v6, v1, 0x2

    .line 142
    .line 143
    aget v6, p2, v6

    .line 144
    .line 145
    add-int/2addr v6, v5

    .line 146
    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :cond_5
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-ne v2, v3, :cond_6

    .line 156
    .line 157
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    .line 158
    .line 159
    const v3, 0x3f4ccccd    # 0.8f

    .line 160
    .line 161
    .line 162
    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v3, v1, 0x1

    .line 166
    .line 167
    aget v3, p2, v3

    .line 168
    .line 169
    add-int/lit8 v6, v1, 0x2

    .line 170
    .line 171
    aget v6, p2, v6

    .line 172
    .line 173
    add-int/2addr v6, v5

    .line 174
    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_2

    .line 178
    .line 179
    :cond_6
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-ne v2, v3, :cond_7

    .line 184
    .line 185
    new-instance v2, Landroid/text/style/SubscriptSpan;

    .line 186
    .line 187
    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    .line 188
    .line 189
    .line 190
    add-int/lit8 v3, v1, 0x1

    .line 191
    .line 192
    aget v3, p2, v3

    .line 193
    .line 194
    add-int/lit8 v6, v1, 0x2

    .line 195
    .line 196
    aget v6, p2, v6

    .line 197
    .line 198
    add-int/2addr v6, v5

    .line 199
    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :cond_7
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-ne v2, v3, :cond_8

    .line 209
    .line 210
    new-instance v2, Landroid/text/style/SuperscriptSpan;

    .line 211
    .line 212
    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    .line 213
    .line 214
    .line 215
    add-int/lit8 v3, v1, 0x1

    .line 216
    .line 217
    aget v3, p2, v3

    .line 218
    .line 219
    add-int/lit8 v6, v1, 0x2

    .line 220
    .line 221
    aget v6, p2, v6

    .line 222
    .line 223
    add-int/2addr v6, v5

    .line 224
    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_2

    .line 228
    .line 229
    :cond_8
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-ne v2, v3, :cond_9

    .line 234
    .line 235
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    .line 236
    .line 237
    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 238
    .line 239
    .line 240
    add-int/lit8 v3, v1, 0x1

    .line 241
    .line 242
    aget v3, p2, v3

    .line 243
    .line 244
    add-int/lit8 v6, v1, 0x2

    .line 245
    .line 246
    aget v6, p2, v6

    .line 247
    .line 248
    add-int/2addr v6, v5

    .line 249
    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_2

    .line 253
    .line 254
    :cond_9
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-ne v2, v3, :cond_a

    .line 259
    .line 260
    new-instance v2, Landroid/text/style/BulletSpan;

    .line 261
    .line 262
    const/16 v3, 0xa

    .line 263
    .line 264
    invoke-direct {v2, v3}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 265
    .line 266
    .line 267
    add-int/lit8 v3, v1, 0x1

    .line 268
    .line 269
    aget v3, p2, v3

    .line 270
    .line 271
    add-int/lit8 v4, v1, 0x2

    .line 272
    .line 273
    aget v4, p2, v4

    .line 274
    .line 275
    add-int/2addr v4, v5

    .line 276
    invoke-static {v0, v2, v3, v4}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_2

    .line 280
    .line 281
    :cond_a
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-ne v2, v3, :cond_b

    .line 286
    .line 287
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 288
    .line 289
    add-int/lit8 v3, v1, 0x1

    .line 290
    .line 291
    aget v3, p2, v3

    .line 292
    .line 293
    add-int/lit8 v4, v1, 0x2

    .line 294
    .line 295
    aget v4, p2, v4

    .line 296
    .line 297
    add-int/2addr v4, v5

    .line 298
    const/16 v5, 0x12

    .line 299
    .line 300
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_2

    .line 304
    .line 305
    :cond_b
    iget-wide v6, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 306
    .line 307
    invoke-static {v6, v7, v2}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    const-string v3, "font;"

    .line 312
    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-eqz v3, :cond_11

    .line 318
    .line 319
    const-string v3, ";height="

    .line 320
    .line 321
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    if-eqz v3, :cond_c

    .line 326
    .line 327
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    new-instance v6, Landroid/content/res/StringBlock$Height;

    .line 332
    .line 333
    invoke-direct {v6, v3}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    .line 334
    .line 335
    .line 336
    add-int/lit8 v3, v1, 0x1

    .line 337
    .line 338
    aget v3, p2, v3

    .line 339
    .line 340
    add-int/lit8 v7, v1, 0x2

    .line 341
    .line 342
    aget v7, p2, v7

    .line 343
    .line 344
    add-int/2addr v7, v5

    .line 345
    invoke-static {v0, v6, v3, v7}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 346
    .line 347
    .line 348
    :cond_c
    const-string v3, ";size="

    .line 349
    .line 350
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    if-eqz v3, :cond_d

    .line 355
    .line 356
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    .line 361
    .line 362
    invoke-direct {v6, v3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 363
    .line 364
    .line 365
    add-int/lit8 v3, v1, 0x1

    .line 366
    .line 367
    aget v3, p2, v3

    .line 368
    .line 369
    add-int/lit8 v7, v1, 0x2

    .line 370
    .line 371
    aget v7, p2, v7

    .line 372
    .line 373
    add-int/2addr v7, v5

    .line 374
    invoke-virtual {v0, v6, v3, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 375
    .line 376
    .line 377
    :cond_d
    const-string v3, ";fgcolor="

    .line 378
    .line 379
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    if-eqz v3, :cond_e

    .line 384
    .line 385
    invoke-static {v3, v5}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    add-int/lit8 v6, v1, 0x1

    .line 390
    .line 391
    aget v6, p2, v6

    .line 392
    .line 393
    add-int/lit8 v7, v1, 0x2

    .line 394
    .line 395
    aget v7, p2, v7

    .line 396
    .line 397
    add-int/2addr v7, v5

    .line 398
    invoke-virtual {v0, v3, v6, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 399
    .line 400
    .line 401
    :cond_e
    const-string v3, ";color="

    .line 402
    .line 403
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    if-eqz v3, :cond_f

    .line 408
    .line 409
    invoke-static {v3, v5}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    add-int/lit8 v6, v1, 0x1

    .line 414
    .line 415
    aget v6, p2, v6

    .line 416
    .line 417
    add-int/lit8 v7, v1, 0x2

    .line 418
    .line 419
    aget v7, p2, v7

    .line 420
    .line 421
    add-int/2addr v7, v5

    .line 422
    invoke-virtual {v0, v3, v6, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 423
    .line 424
    .line 425
    :cond_f
    const-string v3, ";bgcolor="

    .line 426
    .line 427
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    if-eqz v3, :cond_10

    .line 432
    .line 433
    invoke-static {v3, p1}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    add-int/lit8 v6, v1, 0x1

    .line 438
    .line 439
    aget v6, p2, v6

    .line 440
    .line 441
    add-int/lit8 v7, v1, 0x2

    .line 442
    .line 443
    aget v7, p2, v7

    .line 444
    .line 445
    add-int/2addr v7, v5

    .line 446
    invoke-virtual {v0, v3, v6, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 447
    .line 448
    .line 449
    :cond_10
    const-string v3, ";face="

    .line 450
    .line 451
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    if-eqz v2, :cond_15

    .line 456
    .line 457
    new-instance v3, Landroid/text/style/TypefaceSpan;

    .line 458
    .line 459
    invoke-direct {v3, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    add-int/lit8 v2, v1, 0x1

    .line 463
    .line 464
    aget v2, p2, v2

    .line 465
    .line 466
    add-int/lit8 v6, v1, 0x2

    .line 467
    .line 468
    aget v6, p2, v6

    .line 469
    .line 470
    add-int/2addr v6, v5

    .line 471
    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 472
    .line 473
    .line 474
    goto :goto_2

    .line 475
    :cond_11
    const-string v3, "a;"

    .line 476
    .line 477
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    if-eqz v3, :cond_12

    .line 482
    .line 483
    const-string v3, ";href="

    .line 484
    .line 485
    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    if-eqz v2, :cond_15

    .line 490
    .line 491
    new-instance v3, Landroid/text/style/URLSpan;

    .line 492
    .line 493
    invoke-direct {v3, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    add-int/lit8 v2, v1, 0x1

    .line 497
    .line 498
    aget v2, p2, v2

    .line 499
    .line 500
    add-int/lit8 v6, v1, 0x2

    .line 501
    .line 502
    aget v6, p2, v6

    .line 503
    .line 504
    add-int/2addr v6, v5

    .line 505
    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 506
    .line 507
    .line 508
    goto :goto_2

    .line 509
    :cond_12
    const-string v3, "annotation;"

    .line 510
    .line 511
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    if-eqz v3, :cond_15

    .line 516
    .line 517
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    const/16 v6, 0x3b

    .line 522
    .line 523
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 524
    .line 525
    .line 526
    move-result v7

    .line 527
    :goto_1
    if-ge v7, v3, :cond_15

    .line 528
    .line 529
    const/16 v8, 0x3d

    .line 530
    .line 531
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->indexOf(II)I

    .line 532
    .line 533
    .line 534
    move-result v8

    .line 535
    if-gez v8, :cond_13

    .line 536
    .line 537
    goto :goto_2

    .line 538
    :cond_13
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->indexOf(II)I

    .line 539
    .line 540
    .line 541
    move-result v9

    .line 542
    if-gez v9, :cond_14

    .line 543
    .line 544
    move v9, v3

    .line 545
    :cond_14
    add-int/lit8 v7, v7, 0x1

    .line 546
    .line 547
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v7

    .line 551
    add-int/lit8 v8, v8, 0x1

    .line 552
    .line 553
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v8

    .line 557
    new-instance v10, Landroid/text/Annotation;

    .line 558
    .line 559
    invoke-direct {v10, v7, v8}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    add-int/lit8 v7, v1, 0x1

    .line 563
    .line 564
    aget v7, p2, v7

    .line 565
    .line 566
    add-int/lit8 v8, v1, 0x2

    .line 567
    .line 568
    aget v8, p2, v8

    .line 569
    .line 570
    add-int/2addr v8, v5

    .line 571
    invoke-virtual {v0, v10, v7, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 572
    .line 573
    .line 574
    move v7, v9

    .line 575
    goto :goto_1

    .line 576
    :cond_15
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 577
    .line 578
    goto/16 :goto_0

    .line 579
    .line 580
    :cond_16
    new-instance p1, Landroid/text/SpannedString;

    .line 581
    .line 582
    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 583
    .line 584
    .line 585
    return-object p1
.end method

.method private static getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x1000000

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const-string v0, "@"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v2, "color"

    .line 27
    .line 28
    const-string v3, "android"

    .line 29
    .line 30
    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    new-instance p0, Landroid/text/style/TextAppearanceSpan;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    move-object v2, p0

    .line 50
    invoke-direct/range {v2 .. v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    move v1, p0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 65
    .line 66
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    .line 67
    .line 68
    invoke-direct {p0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_3
    new-instance p0, Landroid/text/style/BackgroundColorSpan;

    .line 73
    .line 74
    invoke-direct {p0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 75
    .line 76
    .line 77
    return-object p0
.end method

.method private static native nativeCreate([BII)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetSize(J)I
.end method

.method private static native nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native nativeGetStyle(JI)[I
.end method

.method private static subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/2addr p1, v0

    .line 14
    const/16 v0, 0x3b

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-gez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public finalize()V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 20
    .line 21
    invoke-static {v1, v2}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    .line 22
    .line 23
    .line 24
    :cond_1
    throw v0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    aget-object v0, v0, p1

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/CharSequence;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v0

    .line 26
    :cond_1
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/16 v1, 0xfa

    .line 37
    .line 38
    if-le v0, v1, :cond_2

    .line 39
    .line 40
    new-instance v0, Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 49
    .line 50
    iput-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    .line 51
    .line 52
    :cond_3
    :goto_0
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 53
    .line 54
    invoke-static {v0, v1, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 59
    .line 60
    invoke-static {v1, v2, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_12

    .line 65
    .line 66
    iget-object v2, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 67
    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    new-instance v2, Landroid/content/res/StringBlock$StyleIDs;

    .line 71
    .line 72
    invoke-direct {v2}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 76
    .line 77
    :cond_4
    const/4 v2, 0x0

    .line 78
    :goto_1
    array-length v3, v1

    .line 79
    if-ge v2, v3, :cond_11

    .line 80
    .line 81
    aget v3, v1, v2

    .line 82
    .line 83
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 84
    .line 85
    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eq v3, v4, :cond_10

    .line 90
    .line 91
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 92
    .line 93
    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eq v3, v4, :cond_10

    .line 98
    .line 99
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 100
    .line 101
    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eq v3, v4, :cond_10

    .line 106
    .line 107
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 108
    .line 109
    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eq v3, v4, :cond_10

    .line 114
    .line 115
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 116
    .line 117
    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eq v3, v4, :cond_10

    .line 122
    .line 123
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 124
    .line 125
    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eq v3, v4, :cond_10

    .line 130
    .line 131
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 132
    .line 133
    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eq v3, v4, :cond_10

    .line 138
    .line 139
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 140
    .line 141
    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eq v3, v4, :cond_10

    .line 146
    .line 147
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 148
    .line 149
    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eq v3, v4, :cond_10

    .line 154
    .line 155
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 156
    .line 157
    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eq v3, v4, :cond_10

    .line 162
    .line 163
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 164
    .line 165
    invoke-static {v4}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-ne v3, v4, :cond_5

    .line 170
    .line 171
    goto/16 :goto_2

    .line 172
    .line 173
    :cond_5
    iget-wide v4, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 174
    .line 175
    invoke-static {v4, v5, v3}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    const-string v5, "b"

    .line 180
    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_6

    .line 186
    .line 187
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 188
    .line 189
    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$002(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 190
    .line 191
    .line 192
    goto/16 :goto_2

    .line 193
    .line 194
    :cond_6
    const-string/jumbo v5, "i"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_7

    .line 202
    .line 203
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 204
    .line 205
    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$102(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 206
    .line 207
    .line 208
    goto/16 :goto_2

    .line 209
    .line 210
    :cond_7
    const-string/jumbo v5, "u"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_8

    .line 218
    .line 219
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 220
    .line 221
    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$202(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 222
    .line 223
    .line 224
    goto/16 :goto_2

    .line 225
    .line 226
    :cond_8
    const-string/jumbo v5, "tt"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-eqz v5, :cond_9

    .line 234
    .line 235
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 236
    .line 237
    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$302(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_9
    const-string v5, "big"

    .line 242
    .line 243
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-eqz v5, :cond_a

    .line 248
    .line 249
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 250
    .line 251
    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$402(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_a
    const-string/jumbo v5, "small"

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    if-eqz v5, :cond_b

    .line 263
    .line 264
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 265
    .line 266
    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$502(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_b
    const-string/jumbo v5, "sup"

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_c

    .line 278
    .line 279
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 280
    .line 281
    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$702(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_c
    const-string/jumbo v5, "sub"

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_d

    .line 293
    .line 294
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 295
    .line 296
    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$602(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 297
    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_d
    const-string/jumbo v5, "strike"

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-eqz v5, :cond_e

    .line 308
    .line 309
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 310
    .line 311
    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$802(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 312
    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_e
    const-string/jumbo v5, "li"

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eqz v5, :cond_f

    .line 323
    .line 324
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 325
    .line 326
    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$902(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 327
    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_f
    const-string/jumbo v5, "marquee"

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    if-eqz v4, :cond_10

    .line 338
    .line 339
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 340
    .line 341
    invoke-static {v4, v3}, Landroid/content/res/StringBlock$StyleIDs;->access$1002(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 342
    .line 343
    .line 344
    :cond_10
    :goto_2
    add-int/lit8 v2, v2, 0x3

    .line 345
    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :cond_11
    iget-object v2, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 349
    .line 350
    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    :cond_12
    iget-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    .line 355
    .line 356
    if-eqz v1, :cond_13

    .line 357
    .line 358
    aput-object v0, v1, p1

    .line 359
    .line 360
    goto :goto_3

    .line 361
    :cond_13
    iget-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    .line 362
    .line 363
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    :goto_3
    monitor-exit p0

    .line 367
    return-object v0

    .line 368
    :catchall_0
    move-exception p1

    .line 369
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    throw p1
.end method
