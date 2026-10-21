.class public final enum Landroid/renderscript/Element$DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Element$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Element$DataType;

.field public static final enum BOOLEAN:Landroid/renderscript/Element$DataType;

.field public static final enum FLOAT_16:Landroid/renderscript/Element$DataType;

.field public static final enum FLOAT_32:Landroid/renderscript/Element$DataType;

.field public static final enum FLOAT_64:Landroid/renderscript/Element$DataType;

.field public static final enum MATRIX_2X2:Landroid/renderscript/Element$DataType;

.field public static final enum MATRIX_3X3:Landroid/renderscript/Element$DataType;

.field public static final enum MATRIX_4X4:Landroid/renderscript/Element$DataType;

.field public static final enum NONE:Landroid/renderscript/Element$DataType;

.field public static final enum RS_ALLOCATION:Landroid/renderscript/Element$DataType;

.field public static final enum RS_ELEMENT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_FONT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_MESH:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

.field public static final enum RS_SAMPLER:Landroid/renderscript/Element$DataType;

.field public static final enum RS_SCRIPT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_TYPE:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_16:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_32:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_64:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_8:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_16:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_32:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_64:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_8:Landroid/renderscript/Element$DataType;


# instance fields
.field mID:I

.field mSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v0, Landroid/renderscript/Element$DataType;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2, v2}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    .line 10
    .line 11
    new-instance v1, Landroid/renderscript/Element$DataType;

    .line 12
    .line 13
    const-string v3, "FLOAT_16"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v3, v4, v4, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    .line 21
    .line 22
    new-instance v3, Landroid/renderscript/Element$DataType;

    .line 23
    .line 24
    const-string v6, "FLOAT_32"

    .line 25
    .line 26
    const/4 v7, 0x4

    .line 27
    invoke-direct {v3, v6, v5, v5, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 28
    .line 29
    .line 30
    sput-object v3, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    .line 31
    .line 32
    new-instance v6, Landroid/renderscript/Element$DataType;

    .line 33
    .line 34
    const-string v8, "FLOAT_64"

    .line 35
    .line 36
    const/4 v9, 0x3

    .line 37
    const/16 v10, 0x8

    .line 38
    .line 39
    invoke-direct {v6, v8, v9, v9, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 40
    .line 41
    .line 42
    sput-object v6, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    .line 43
    .line 44
    new-instance v8, Landroid/renderscript/Element$DataType;

    .line 45
    .line 46
    const-string v11, "SIGNED_8"

    .line 47
    .line 48
    invoke-direct {v8, v11, v7, v7, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 49
    .line 50
    .line 51
    sput-object v8, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    .line 52
    .line 53
    new-instance v11, Landroid/renderscript/Element$DataType;

    .line 54
    .line 55
    const-string v12, "SIGNED_16"

    .line 56
    .line 57
    const/4 v13, 0x5

    .line 58
    invoke-direct {v11, v12, v13, v13, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 59
    .line 60
    .line 61
    sput-object v11, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    .line 62
    .line 63
    new-instance v12, Landroid/renderscript/Element$DataType;

    .line 64
    .line 65
    const-string v14, "SIGNED_32"

    .line 66
    .line 67
    const/4 v15, 0x6

    .line 68
    invoke-direct {v12, v14, v15, v15, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 69
    .line 70
    .line 71
    sput-object v12, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    .line 72
    .line 73
    new-instance v14, Landroid/renderscript/Element$DataType;

    .line 74
    .line 75
    const-string v15, "SIGNED_64"

    .line 76
    .line 77
    const/4 v13, 0x7

    .line 78
    invoke-direct {v14, v15, v13, v13, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    .line 82
    .line 83
    new-instance v15, Landroid/renderscript/Element$DataType;

    .line 84
    .line 85
    const-string v13, "UNSIGNED_8"

    .line 86
    .line 87
    invoke-direct {v15, v13, v10, v10, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 88
    .line 89
    .line 90
    sput-object v15, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    .line 91
    .line 92
    new-instance v13, Landroid/renderscript/Element$DataType;

    .line 93
    .line 94
    const-string v9, "UNSIGNED_16"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v13, v9, v2, v2, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 99
    .line 100
    .line 101
    sput-object v13, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    .line 102
    .line 103
    new-instance v9, Landroid/renderscript/Element$DataType;

    .line 104
    .line 105
    const-string v2, "UNSIGNED_32"

    .line 106
    .line 107
    const/16 v5, 0xa

    .line 108
    .line 109
    invoke-direct {v9, v2, v5, v5, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 110
    .line 111
    .line 112
    sput-object v9, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    .line 113
    .line 114
    new-instance v2, Landroid/renderscript/Element$DataType;

    .line 115
    .line 116
    const-string v5, "UNSIGNED_64"

    .line 117
    .line 118
    const/16 v7, 0xb

    .line 119
    .line 120
    invoke-direct {v2, v5, v7, v7, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 121
    .line 122
    .line 123
    sput-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    .line 124
    .line 125
    new-instance v5, Landroid/renderscript/Element$DataType;

    .line 126
    .line 127
    const-string v7, "BOOLEAN"

    .line 128
    .line 129
    const/16 v10, 0xc

    .line 130
    .line 131
    invoke-direct {v5, v7, v10, v10, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 132
    .line 133
    .line 134
    sput-object v5, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    .line 135
    .line 136
    new-instance v7, Landroid/renderscript/Element$DataType;

    .line 137
    .line 138
    const-string v10, "UNSIGNED_5_6_5"

    .line 139
    .line 140
    const/16 v4, 0xd

    .line 141
    .line 142
    move-object/from16 v16, v5

    .line 143
    .line 144
    const/4 v5, 0x2

    .line 145
    invoke-direct {v7, v10, v4, v4, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 146
    .line 147
    .line 148
    sput-object v7, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    .line 149
    .line 150
    new-instance v10, Landroid/renderscript/Element$DataType;

    .line 151
    .line 152
    const-string v4, "UNSIGNED_5_5_5_1"

    .line 153
    .line 154
    move-object/from16 v17, v7

    .line 155
    .line 156
    const/16 v7, 0xe

    .line 157
    .line 158
    invoke-direct {v10, v4, v7, v7, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 159
    .line 160
    .line 161
    sput-object v10, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    .line 162
    .line 163
    new-instance v4, Landroid/renderscript/Element$DataType;

    .line 164
    .line 165
    const-string v7, "UNSIGNED_4_4_4_4"

    .line 166
    .line 167
    move-object/from16 v18, v10

    .line 168
    .line 169
    const/16 v10, 0xf

    .line 170
    .line 171
    invoke-direct {v4, v7, v10, v10, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 172
    .line 173
    .line 174
    sput-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    .line 175
    .line 176
    new-instance v5, Landroid/renderscript/Element$DataType;

    .line 177
    .line 178
    const/16 v7, 0x40

    .line 179
    .line 180
    const-string v10, "MATRIX_4X4"

    .line 181
    .line 182
    move-object/from16 v19, v4

    .line 183
    .line 184
    const/16 v4, 0x10

    .line 185
    .line 186
    invoke-direct {v5, v10, v4, v4, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 187
    .line 188
    .line 189
    sput-object v5, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    .line 190
    .line 191
    new-instance v7, Landroid/renderscript/Element$DataType;

    .line 192
    .line 193
    const/16 v10, 0x24

    .line 194
    .line 195
    const-string v4, "MATRIX_3X3"

    .line 196
    .line 197
    move-object/from16 v20, v5

    .line 198
    .line 199
    const/16 v5, 0x11

    .line 200
    .line 201
    invoke-direct {v7, v4, v5, v5, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 202
    .line 203
    .line 204
    sput-object v7, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    .line 205
    .line 206
    new-instance v4, Landroid/renderscript/Element$DataType;

    .line 207
    .line 208
    const-string v10, "MATRIX_2X2"

    .line 209
    .line 210
    const/16 v5, 0x12

    .line 211
    .line 212
    move-object/from16 v21, v7

    .line 213
    .line 214
    const/16 v7, 0x10

    .line 215
    .line 216
    invoke-direct {v4, v10, v5, v5, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 217
    .line 218
    .line 219
    sput-object v4, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    .line 220
    .line 221
    new-instance v7, Landroid/renderscript/Element$DataType;

    .line 222
    .line 223
    const/16 v10, 0x3e8

    .line 224
    .line 225
    const-string v5, "RS_ELEMENT"

    .line 226
    .line 227
    move-object/from16 v22, v4

    .line 228
    .line 229
    const/16 v4, 0x13

    .line 230
    .line 231
    invoke-direct {v7, v5, v4, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 232
    .line 233
    .line 234
    sput-object v7, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    .line 235
    .line 236
    new-instance v5, Landroid/renderscript/Element$DataType;

    .line 237
    .line 238
    const/16 v10, 0x3e9

    .line 239
    .line 240
    const-string v4, "RS_TYPE"

    .line 241
    .line 242
    move-object/from16 v23, v7

    .line 243
    .line 244
    const/16 v7, 0x14

    .line 245
    .line 246
    invoke-direct {v5, v4, v7, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 247
    .line 248
    .line 249
    sput-object v5, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    .line 250
    .line 251
    new-instance v4, Landroid/renderscript/Element$DataType;

    .line 252
    .line 253
    const/16 v10, 0x3ea

    .line 254
    .line 255
    const-string v7, "RS_ALLOCATION"

    .line 256
    .line 257
    move-object/from16 v24, v5

    .line 258
    .line 259
    const/16 v5, 0x15

    .line 260
    .line 261
    invoke-direct {v4, v7, v5, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 262
    .line 263
    .line 264
    sput-object v4, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    .line 265
    .line 266
    new-instance v7, Landroid/renderscript/Element$DataType;

    .line 267
    .line 268
    const/16 v10, 0x16

    .line 269
    .line 270
    const/16 v5, 0x3eb

    .line 271
    .line 272
    move-object/from16 v25, v4

    .line 273
    .line 274
    const-string v4, "RS_SAMPLER"

    .line 275
    .line 276
    invoke-direct {v7, v4, v10, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 277
    .line 278
    .line 279
    sput-object v7, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    .line 280
    .line 281
    new-instance v4, Landroid/renderscript/Element$DataType;

    .line 282
    .line 283
    const/16 v5, 0x17

    .line 284
    .line 285
    const/16 v10, 0x3ec

    .line 286
    .line 287
    move-object/from16 v26, v7

    .line 288
    .line 289
    const-string v7, "RS_SCRIPT"

    .line 290
    .line 291
    invoke-direct {v4, v7, v5, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 292
    .line 293
    .line 294
    sput-object v4, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    .line 295
    .line 296
    new-instance v5, Landroid/renderscript/Element$DataType;

    .line 297
    .line 298
    const/16 v7, 0x18

    .line 299
    .line 300
    const/16 v10, 0x3ed

    .line 301
    .line 302
    move-object/from16 v27, v4

    .line 303
    .line 304
    const-string v4, "RS_MESH"

    .line 305
    .line 306
    invoke-direct {v5, v4, v7, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 307
    .line 308
    .line 309
    sput-object v5, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    .line 310
    .line 311
    new-instance v4, Landroid/renderscript/Element$DataType;

    .line 312
    .line 313
    const/16 v7, 0x19

    .line 314
    .line 315
    const/16 v10, 0x3ee

    .line 316
    .line 317
    move-object/from16 v28, v5

    .line 318
    .line 319
    const-string v5, "RS_PROGRAM_FRAGMENT"

    .line 320
    .line 321
    invoke-direct {v4, v5, v7, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 322
    .line 323
    .line 324
    sput-object v4, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    .line 325
    .line 326
    new-instance v5, Landroid/renderscript/Element$DataType;

    .line 327
    .line 328
    const/16 v7, 0x1a

    .line 329
    .line 330
    const/16 v10, 0x3ef

    .line 331
    .line 332
    move-object/from16 v29, v4

    .line 333
    .line 334
    const-string v4, "RS_PROGRAM_VERTEX"

    .line 335
    .line 336
    invoke-direct {v5, v4, v7, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 337
    .line 338
    .line 339
    sput-object v5, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    .line 340
    .line 341
    new-instance v4, Landroid/renderscript/Element$DataType;

    .line 342
    .line 343
    const/16 v7, 0x1b

    .line 344
    .line 345
    const/16 v10, 0x3f0

    .line 346
    .line 347
    move-object/from16 v30, v5

    .line 348
    .line 349
    const-string v5, "RS_PROGRAM_RASTER"

    .line 350
    .line 351
    invoke-direct {v4, v5, v7, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 352
    .line 353
    .line 354
    sput-object v4, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    .line 355
    .line 356
    new-instance v5, Landroid/renderscript/Element$DataType;

    .line 357
    .line 358
    const/16 v7, 0x1c

    .line 359
    .line 360
    const/16 v10, 0x3f1

    .line 361
    .line 362
    move-object/from16 v31, v4

    .line 363
    .line 364
    const-string v4, "RS_PROGRAM_STORE"

    .line 365
    .line 366
    invoke-direct {v5, v4, v7, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 367
    .line 368
    .line 369
    sput-object v5, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    .line 370
    .line 371
    new-instance v4, Landroid/renderscript/Element$DataType;

    .line 372
    .line 373
    const/16 v7, 0x1d

    .line 374
    .line 375
    const/16 v10, 0x3f2

    .line 376
    .line 377
    move-object/from16 v32, v5

    .line 378
    .line 379
    const-string v5, "RS_FONT"

    .line 380
    .line 381
    invoke-direct {v4, v5, v7, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 382
    .line 383
    .line 384
    sput-object v4, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    .line 385
    .line 386
    const/16 v5, 0x1e

    .line 387
    .line 388
    new-array v5, v5, [Landroid/renderscript/Element$DataType;

    .line 389
    .line 390
    const/4 v7, 0x0

    .line 391
    aput-object v0, v5, v7

    .line 392
    .line 393
    const/4 v0, 0x1

    .line 394
    aput-object v1, v5, v0

    .line 395
    .line 396
    const/4 v0, 0x2

    .line 397
    aput-object v3, v5, v0

    .line 398
    .line 399
    const/4 v0, 0x3

    .line 400
    aput-object v6, v5, v0

    .line 401
    .line 402
    const/4 v0, 0x4

    .line 403
    aput-object v8, v5, v0

    .line 404
    .line 405
    const/4 v0, 0x5

    .line 406
    aput-object v11, v5, v0

    .line 407
    .line 408
    const/4 v0, 0x6

    .line 409
    aput-object v12, v5, v0

    .line 410
    .line 411
    const/4 v0, 0x7

    .line 412
    aput-object v14, v5, v0

    .line 413
    .line 414
    const/16 v0, 0x8

    .line 415
    .line 416
    aput-object v15, v5, v0

    .line 417
    .line 418
    const/16 v0, 0x9

    .line 419
    .line 420
    aput-object v13, v5, v0

    .line 421
    .line 422
    const/16 v0, 0xa

    .line 423
    .line 424
    aput-object v9, v5, v0

    .line 425
    .line 426
    const/16 v0, 0xb

    .line 427
    .line 428
    aput-object v2, v5, v0

    .line 429
    .line 430
    const/16 v0, 0xc

    .line 431
    .line 432
    aput-object v16, v5, v0

    .line 433
    .line 434
    const/16 v0, 0xd

    .line 435
    .line 436
    aput-object v17, v5, v0

    .line 437
    .line 438
    const/16 v0, 0xe

    .line 439
    .line 440
    aput-object v18, v5, v0

    .line 441
    .line 442
    const/16 v0, 0xf

    .line 443
    .line 444
    aput-object v19, v5, v0

    .line 445
    .line 446
    const/16 v0, 0x10

    .line 447
    .line 448
    aput-object v20, v5, v0

    .line 449
    .line 450
    const/16 v0, 0x11

    .line 451
    .line 452
    aput-object v21, v5, v0

    .line 453
    .line 454
    const/16 v0, 0x12

    .line 455
    .line 456
    aput-object v22, v5, v0

    .line 457
    .line 458
    const/16 v0, 0x13

    .line 459
    .line 460
    aput-object v23, v5, v0

    .line 461
    .line 462
    const/16 v0, 0x14

    .line 463
    .line 464
    aput-object v24, v5, v0

    .line 465
    .line 466
    const/16 v0, 0x15

    .line 467
    .line 468
    aput-object v25, v5, v0

    .line 469
    .line 470
    const/16 v0, 0x16

    .line 471
    .line 472
    aput-object v26, v5, v0

    .line 473
    .line 474
    const/16 v0, 0x17

    .line 475
    .line 476
    aput-object v27, v5, v0

    .line 477
    .line 478
    const/16 v0, 0x18

    .line 479
    .line 480
    aput-object v28, v5, v0

    .line 481
    .line 482
    const/16 v0, 0x19

    .line 483
    .line 484
    aput-object v29, v5, v0

    .line 485
    .line 486
    const/16 v0, 0x1a

    .line 487
    .line 488
    aput-object v30, v5, v0

    .line 489
    .line 490
    const/16 v0, 0x1b

    .line 491
    .line 492
    aput-object v31, v5, v0

    .line 493
    .line 494
    const/16 v0, 0x1c

    .line 495
    .line 496
    aput-object v32, v5, v0

    .line 497
    .line 498
    const/16 v0, 0x1d

    .line 499
    .line 500
    aput-object v4, v5, v0

    .line 501
    .line 502
    sput-object v5, Landroid/renderscript/Element$DataType;->$VALUES:[Landroid/renderscript/Element$DataType;

    .line 503
    .line 504
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput p3, p0, Landroid/renderscript/Element$DataType;->mID:I

    const/4 p1, 0x4

    .line 6
    iput p1, p0, Landroid/renderscript/Element$DataType;->mSize:I

    .line 7
    sget p1, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    const/16 p1, 0x20

    .line 8
    iput p1, p0, Landroid/renderscript/Element$DataType;->mSize:I

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Landroid/renderscript/Element$DataType;->mID:I

    .line 3
    iput p4, p0, Landroid/renderscript/Element$DataType;->mSize:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Element$DataType;
    .locals 1

    const-class v0, Landroid/renderscript/Element$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Element$DataType;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Element$DataType;
    .locals 1

    sget-object v0, Landroid/renderscript/Element$DataType;->$VALUES:[Landroid/renderscript/Element$DataType;

    invoke-virtual {v0}, [Landroid/renderscript/Element$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Element$DataType;

    return-object v0
.end method
